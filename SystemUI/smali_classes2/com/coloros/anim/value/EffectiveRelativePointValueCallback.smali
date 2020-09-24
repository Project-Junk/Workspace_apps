.class public Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;
.super Lcom/coloros/anim/value/EffectiveValueCallback;
.source "EffectiveRelativePointValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/value/EffectiveValueCallback<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/coloros/anim/value/EffectiveValueCallback;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1}, Lcom/coloros/anim/value/EffectiveValueCallback;-><init>(Ljava/lang/Object;)V

    .line 15
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/coloros/anim/value/EffectiveFrameInfo;)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 50
    iget-object p0, p0, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->value:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    return-object p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Landroid/graphics/PointF;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    .line 28
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 29
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 30
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v3

    .line 27
    invoke-static {v1, v2, v3}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 33
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 34
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v4

    .line 31
    invoke-static {v2, v3, v4}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->getOffset(Lcom/coloros/anim/value/EffectiveFrameInfo;)Landroid/graphics/PointF;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 39
    iget-object p0, p0, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-object p0
.end method

.method public bridge synthetic getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/coloros/anim/value/EffectiveRelativePointValueCallback;->getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
