.class Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;
.super Ljava/lang/Object;
.source "ErrorEditTextHelper.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ErrorEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShakeInterpolator"
.end annotation


# static fields
.field private static final durations:[I

.field private static final offsets:[F

.field private static final progresses:[F

.field static final total:I


# instance fields
.field private final mBetweenInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    .line 668
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->offsets:[F

    const/4 v0, 0x4

    .line 669
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    .line 678
    sput-object v1, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->durations:[I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1029
    aget v5, v1, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    :cond_0
    sput v4, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->total:I

    .line 679
    sget-object v0, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->durations:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    sput-object v0, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    move v0, v2

    .line 681
    :goto_1
    sget-object v1, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->durations:[I

    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 682
    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 683
    sget-object v1, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v0

    sget v4, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->total:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v1, v2

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x53
        0x85
        0x75
        0x75
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->mBetweenInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/widget/ErrorEditTextHelper$1;)V
    .locals 0

    .line 666
    invoke-direct {p0}, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/4 v0, 0x1

    .line 699
    :goto_0
    sget-object v1, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 701
    aget v2, v1, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 703
    aget v3, v1, v2

    sub-float/2addr p1, v3

    aget v3, v1, v0

    aget v1, v1, v2

    sub-float/2addr v3, v1

    div-float/2addr p1, v3

    .line 705
    iget-object v1, p0, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->mBetweenInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 707
    sget-object v1, Lcom/color/support/widget/ErrorEditTextHelper$ShakeInterpolator;->offsets:[F

    aget v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    aget v0, v1, v0

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
