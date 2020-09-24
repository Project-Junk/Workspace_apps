.class public final Lcom/coloros/settings/feature/face/a/j;
.super Ljava/lang/Object;
.source "Vector3f.java"


# instance fields
.field public a:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 28
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    iget-object v2, p0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    .line 37
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 38
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 39
    aput p3, v0, p1

    return-void
.end method

.method private b()F
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aget v1, v0, v1

    mul-float/2addr v2, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    aget v1, v0, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/4 v1, 0x2

    aget v3, v0, v1

    aget v0, v0, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    return v2
.end method


# virtual methods
.method public final a()Lcom/coloros/settings/feature/face/a/j;
    .locals 4

    .line 48
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/a/j;->b()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    float-to-double v2, v0

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    mul-float/2addr v3, v1

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 52
    aget v3, v0, v2

    mul-float/2addr v3, v1

    aput v3, v0, v2

    const/4 v2, 0x2

    .line 53
    aget v3, v0, v2

    mul-float/2addr v3, v1

    aput v3, v0, v2

    :cond_0
    return-object p0
.end method
