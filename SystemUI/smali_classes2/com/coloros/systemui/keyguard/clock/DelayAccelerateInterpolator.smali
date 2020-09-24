.class public Lcom/coloros/systemui/keyguard/clock/DelayAccelerateInterpolator;
.super Landroid/view/animation/AccelerateInterpolator;
.source "DelayAccelerateInterpolator.java"


# instance fields
.field private start:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 24
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/DelayAccelerateInterpolator;->start:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 29
    iget v0, p0, Lcom/coloros/systemui/keyguard/clock/DelayAccelerateInterpolator;->start:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 30
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
