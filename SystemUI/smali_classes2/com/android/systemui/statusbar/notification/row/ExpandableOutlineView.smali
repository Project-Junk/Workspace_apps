.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "ExpandableOutlineView.java"


# static fields
.field private static final BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final EMPTY_PATH:Landroid/graphics/Path;

.field private static final ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;


# instance fields
.field private mAlwaysRoundBothCorners:Z

.field private mBackgroundTop:I

.field private mBottomRoundness:F

.field private final mClipPath:Landroid/graphics/Path;

.field private mCurrentBottomRoundness:F

.field private mCurrentTopRoundness:F

.field private mCustomOutline:Z

.field private mDistanceToTopRoundness:F

.field private mOutlineAlpha:F

.field protected mOutlineRadius:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field private final mProvider:Landroid/view/ViewOutlineProvider;

.field protected mShouldTranslateContents:Z

.field private mTmpPath:Landroid/graphics/Path;

.field private mTopAmountRounded:Z

.field private mTopRoundness:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$iDWyu_PNFZfGQr9kcCLSWoFYxpI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$iDWyu_PNFZfGQr9kcCLSWoFYxpI;

    const-string v0, "topRoundness"

    const v3, 0x7f0a05b3

    const v4, 0x7f0a05b1

    const v5, 0x7f0a05b2

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 53
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$ZLqiUGCQzNj3P4m8kfbTwbzfyaI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$ZLqiUGCQzNj3P4m8kfbTwbzfyaI;

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$RLFq7_ULx7AWbuaAJNsAxNrN1PI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$RLFq7_ULx7AWbuaAJNsAxNrN1PI;

    const-string v1, "bottomRoundness"

    const v4, 0x7f0a0112

    const v5, 0x7f0a0110

    const v6, 0x7f0a0111

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 62
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 65
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    const/high16 p1, -0x40800000    # -1.0f

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 70
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    .line 85
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 265
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    return p0
.end method

.method public static getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V
    .locals 5

    .line 236
    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    sub-int v0, p2, p0

    .line 240
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 241
    invoke-static {v0, p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, p4, v2

    if-lez v3, :cond_0

    int-to-float v3, p0

    int-to-float p1, p1

    add-float/2addr p4, p1

    .line 243
    invoke-virtual {p6, v3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v4, v3, v1

    .line 244
    invoke-virtual {p6, v3, p1, v4, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    int-to-float v3, p2

    sub-float v1, v3, v1

    .line 245
    invoke-virtual {p6, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    invoke-virtual {p6, v3, p1, v3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :cond_0
    int-to-float p4, p0

    int-to-float p1, p1

    .line 248
    invoke-virtual {p6, p4, p1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p4, p2

    .line 249
    invoke-virtual {p6, p4, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    cmpl-float p1, p5, v2

    if-lez p1, :cond_1

    int-to-float p1, p2

    int-to-float p2, p3

    sub-float p3, p2, p5

    .line 252
    invoke-virtual {p6, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float p4, p1, v0

    .line 253
    invoke-virtual {p6, p1, p2, p4, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    int-to-float p0, p0

    add-float/2addr v0, p0

    .line 254
    invoke-virtual {p6, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    invoke-virtual {p6, p0, p2, p0, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_1
    int-to-float p1, p2

    int-to-float p2, p3

    .line 257
    invoke-virtual {p6, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p0, p0

    .line 258
    invoke-virtual {p6, p0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    :goto_1
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initDimens()V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003e

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    const v1, 0x7f07060f

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    const v1, 0x7f05000b

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    .line 346
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 348
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 347
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipToOutline(Z)V

    return-void
.end method

.method public static synthetic lambda$ZLqiUGCQzNj3P4m8kfbTwbzfyaI(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundnessInternal(F)V

    return-void
.end method

.method public static synthetic lambda$lgIjKBD4iaJhFeEZ5izPzOddhds(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundnessInternal(F)V

    return-void
.end method

.method private setBottomRoundnessInternal(F)V
    .locals 0

    .line 420
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method private setTopRoundnessInternal(F)V
    .locals 0

    .line 415
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method


# virtual methods
.method protected applyRoundness()V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->invalidateOutline()V

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->invalidate()V

    return-void
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->topAmountNeedsClipping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mExtraWidthForClipping:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 275
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipTopAmount:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    sub-float/2addr v0, v2

    float-to-int v2, v0

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mExtraWidthForClipping:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v0

    .line 277
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mMinimumHeightForClipping:I

    int-to-float v0, v0

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getActualHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipBottomAmount:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 277
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v4, v0

    .line 279
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 285
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_1

    .line 288
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 292
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 294
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 301
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0
.end method

.method protected getClipPath(Z)Landroid/graphics/Path;
    .locals 13

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusTop()F

    move-result v0

    .line 136
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v1, :cond_2

    .line 137
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getTranslation()F

    move-result p1

    float-to-int p1, p1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 139
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mExtraWidthForClipping:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 140
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v1

    .line 141
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipTopAmount:I

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    add-int/2addr v4, v5

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v5, p1

    .line 145
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mMinimumHeightForClipping:I

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getActualHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v2, v4

    add-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 145
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 150
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 151
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    move v9, p1

    move v6, v3

    move v7, v4

    move v8, v5

    sub-int p1, v9, v7

    if-nez p1, :cond_3

    .line 155
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-object p0

    .line 157
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_3

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusBottom()F

    move-result v1

    :goto_3
    add-float v2, v0, v1

    int-to-float p1, p1

    cmpl-float v3, v2, p1

    if-lez v3, :cond_5

    sub-float/2addr v2, p1

    .line 161
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    mul-float v3, v2, p1

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    add-float v5, p1, v4

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    mul-float/2addr v2, v4

    add-float/2addr p1, v4

    div-float/2addr v2, p1

    sub-float/2addr v1, v2

    :cond_5
    move v10, v0

    move v11, v1

    .line 171
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getBgHorizontalPadding()I

    move-result p1

    add-int/2addr v6, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getBgHorizontalPadding()I

    move-result p1

    sub-int/2addr v8, p1

    iget-object v12, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    goto :goto_4

    .line 175
    :cond_6
    iget-object v12, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    .line 179
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    return-object p0
.end method

.method protected getClipPathCustom(Z)Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    .line 190
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusTop()F

    move-result v1

    :goto_0
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v3, :cond_1

    add-float/2addr v1, v4

    .line 195
    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v3, :cond_3

    .line 196
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getTranslation()F

    move-result v3

    float-to-int v3, v3

    goto :goto_1

    :cond_2
    move v3, v5

    .line 198
    :goto_1
    iget v6, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mExtraWidthForClipping:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 199
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v7, v6

    .line 200
    iget v8, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipTopAmount:I

    iget v9, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    add-int/2addr v8, v9

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getWidth()I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v9, v3

    .line 204
    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mMinimumHeightForClipping:I

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getActualHeight()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipBottomAmount:I

    sub-int/2addr v5, v6

    int-to-float v6, v8

    add-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 204
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 207
    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 208
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->top:I

    .line 209
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->right:I

    .line 210
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    :goto_2
    move v13, v3

    move v11, v8

    sub-int v3, v13, v11

    if-nez v3, :cond_4

    .line 214
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-object v0

    .line 216
    :cond_4
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_3

    .line 217
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusBottom()F

    move-result v5

    :goto_3
    cmpl-float v2, v5, v2

    if-eqz v2, :cond_6

    add-float/2addr v5, v4

    :cond_6
    add-float v2, v1, v5

    int-to-float v3, v3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_7

    sub-float/2addr v2, v3

    .line 223
    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    mul-float v4, v2, v3

    iget v6, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    add-float v8, v3, v6

    div-float/2addr v4, v8

    sub-float/2addr v1, v4

    mul-float/2addr v2, v6

    add-float/2addr v3, v6

    div-float/2addr v2, v3

    sub-float/2addr v5, v2

    :cond_7
    move v14, v1

    move v15, v5

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getBgHorizontalPadding()I

    move-result v1

    add-int v10, v7, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getBgHorizontalPadding()I

    move-result v1

    sub-int v12, v9, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    move-object/from16 v16, v1

    invoke-static/range {v10 .. v16}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    .line 230
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    return-object v0
.end method

.method protected getCurrentBackgroundRadiusBottom()F
    .locals 1

    .line 390
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getCurrentBackgroundRadiusTop()F
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    if-eqz v0, :cond_0

    .line 376
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    return p0

    .line 378
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getCurrentBottomRoundness()F
    .locals 0

    .line 386
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    return p0
.end method

.method public getCurrentTopRoundness()F
    .locals 0

    .line 382
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    return p0
.end method

.method public getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutlineAlpha()F
    .locals 0

    .line 465
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    return p0
.end method

.method public getOutlineTranslation()I
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getTranslation()F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method protected isClippingNeeded()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getTranslation()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOutlineShowing()Z
    .locals 0

    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needsOutline()Z
    .locals 3

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens()V

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getActualHeight()I

    move-result v0

    .line 432
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    if-eq v0, p1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method protected setBackgroundTop(I)V
    .locals 1

    .line 408
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    if-eq v0, p1, :cond_0

    .line 409
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public setBottomRoundness(FZ)Z
    .locals 2

    .line 398
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBottomRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 399
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBottomRoundness:F

    .line 400
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setClipBottomAmount(I)V
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipBottomAmount()I

    move-result v0

    .line 450
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    if-eq v0, p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipTopAmount()I

    move-result v0

    .line 441
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    if-eq v0, p1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 1

    .line 320
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDistanceToTopRoundness(F)V

    .line 321
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    .line 323
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_1
    return-void
.end method

.method public setExtraWidthForClipping(F)V
    .locals 0

    .line 308
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setExtraWidthForClipping(F)V

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->invalidate()V

    return-void
.end method

.method public setMinimumHeightForClipping(I)V
    .locals 0

    .line 314
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setMinimumHeightForClipping(I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->invalidate()V

    return-void
.end method

.method protected setOutlineAlpha(F)V
    .locals 1

    .line 457
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 458
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .locals 3

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 514
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 515
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 470
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(FFFF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 472
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :goto_0
    return-void
.end method

.method public setTopRoundness(FZ)Z
    .locals 2

    .line 358
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 359
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopRoundness:F

    .line 360
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public topAmountNeedsClipping()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateOutline()V
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
