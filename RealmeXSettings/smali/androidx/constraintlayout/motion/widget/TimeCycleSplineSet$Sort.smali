.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sort"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doubleQuickSort([I[[FII)V
    .locals 6

    .line 349
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 351
    aput p3, v0, v1

    const/4 p3, 0x1

    .line 352
    aput p2, v0, p3

    const/4 p2, 0x2

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 354
    aget v1, v0, p2

    add-int/lit8 p2, p2, -0x1

    .line 355
    aget v2, v0, p2

    if-ge v1, v2, :cond_0

    .line 357
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;->partition([I[[FII)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v3, -0x1

    .line 358
    aput v5, v0, p2

    add-int/lit8 p2, v4, 0x1

    .line 359
    aput v1, v0, v4

    add-int/lit8 v1, p2, 0x1

    .line 360
    aput v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    add-int/2addr v3, p3

    .line 361
    aput v3, v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static partition([I[[FII)I
    .locals 3

    .line 366
    aget v0, p0, p3

    move v1, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 369
    aget v2, p0, p2

    if-gt v2, v0, :cond_0

    .line 370
    invoke-static {p0, p1, v1, p2}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    return v1
.end method

.method private static swap([I[[FII)V
    .locals 2

    .line 378
    aget v0, p0, p2

    .line 379
    aget v1, p0, p3

    aput v1, p0, p2

    .line 380
    aput v0, p0, p3

    .line 381
    aget-object p0, p1, p2

    .line 382
    aget-object v0, p1, p3

    aput-object v0, p1, p2

    .line 383
    aput-object p0, p1, p3

    return-void
.end method
