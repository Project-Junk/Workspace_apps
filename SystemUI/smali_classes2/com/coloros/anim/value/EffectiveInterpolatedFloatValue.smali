.class public Lcom/coloros/anim/value/EffectiveInterpolatedFloatValue;
.super Lcom/coloros/anim/value/EffectiveInterpolatedValue;
.source "EffectiveInterpolatedFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/value/EffectiveInterpolatedValue<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/value/EffectiveInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/anim/value/EffectiveInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method interpolateValue(Ljava/lang/Float;Ljava/lang/Float;F)Ljava/lang/Float;
    .locals 0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1, p3}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/value/EffectiveInterpolatedFloatValue;->interpolateValue(Ljava/lang/Float;Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
