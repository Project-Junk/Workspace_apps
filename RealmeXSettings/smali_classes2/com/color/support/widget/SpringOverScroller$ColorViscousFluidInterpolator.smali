.class Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorViscousFluidInterpolator"
.end annotation


# static fields
.field private static final VISCOUS_FLUID_NORMALIZE:F

.field private static final VISCOUS_FLUID_OFFSET:F

.field private static final VISCOUS_FLUID_SCALE:F = 8.0f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 501
    invoke-static {v0}, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;->viscousFluid(F)F

    move-result v1

    div-float v1, v0, v1

    sput v1, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 503
    sget v1, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {v0}, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;->viscousFluid(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static viscousFluid(F)F
    .locals 3

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    .line 509
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    sub-float p0, v0, p0

    float-to-double v1, p0

    .line 512
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr v0, p0

    const p0, 0x3ebc5ab2

    const v1, 0x3f21d2a7

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    :goto_0
    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 520
    sget v0, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {p1}, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;->viscousFluid(F)F

    move-result p1

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    .line 522
    sget p1, Lcom/color/support/widget/SpringOverScroller$ColorViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    add-float/2addr v0, p1

    :cond_0
    return v0
.end method
