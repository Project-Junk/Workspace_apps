.class abstract Lcom/coloros/anim/value/EffectiveInterpolatedValue;
.super Lcom/coloros/anim/value/EffectiveValueCallback;
.source "EffectiveInterpolatedValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/coloros/anim/value/EffectiveValueCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private final startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 13
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/anim/value/EffectiveInterpolatedValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/coloros/anim/value/EffectiveValueCallback;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/coloros/anim/value/EffectiveInterpolatedValue;->startValue:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/coloros/anim/value/EffectiveInterpolatedValue;->endValue:Ljava/lang/Object;

    .line 19
    iput-object p3, p0, Lcom/coloros/anim/value/EffectiveInterpolatedValue;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/coloros/anim/value/EffectiveInterpolatedValue;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getOverallProgress()F

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 25
    iget-object v0, p0, Lcom/coloros/anim/value/EffectiveInterpolatedValue;->startValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/coloros/anim/value/EffectiveInterpolatedValue;->endValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1}, Lcom/coloros/anim/value/EffectiveInterpolatedValue;->interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method abstract interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;F)TT;"
        }
    .end annotation
.end method
