.class Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReboundConfig"
.end annotation


# instance fields
.field mFriction:D

.field mTension:D


# direct methods
.method constructor <init>(DD)V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    double-to-float p1, p1

    .line 462
    invoke-direct {p0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->frictionFromOrigamiValue(F)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    double-to-float p1, p3

    .line 463
    invoke-direct {p0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->tensionFromOrigamiValue(F)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    return-void
.end method

.method private frictionFromOrigamiValue(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x41c80000    # 25.0f

    add-float/2addr p1, v0

    return p1
.end method

.method private tensionFromOrigamiValue(F)D
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p1, v0

    const v0, 0x4067ae14    # 3.62f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43420000    # 194.0f

    add-float/2addr p1, v0

    float-to-double v0, p1

    return-wide v0
.end method


# virtual methods
.method setFriction(D)V
    .locals 0

    double-to-float p1, p1

    .line 467
    invoke-direct {p0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->frictionFromOrigamiValue(F)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    return-void
.end method

.method setTension(D)V
    .locals 0

    double-to-float p1, p1

    .line 471
    invoke-direct {p0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->tensionFromOrigamiValue(F)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    return-void
.end method
