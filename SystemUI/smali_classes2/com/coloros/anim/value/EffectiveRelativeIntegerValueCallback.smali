.class public Lcom/coloros/anim/value/EffectiveRelativeIntegerValueCallback;
.super Lcom/coloros/anim/value/EffectiveValueCallback;
.source "EffectiveRelativeIntegerValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/value/EffectiveValueCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/coloros/anim/value/EffectiveValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/coloros/anim/value/EffectiveRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 30
    iget-object p0, p0, Lcom/coloros/anim/value/EffectiveRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/coloros/anim/value/EffectiveFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/coloros/anim/utils/MiscUtils;->lerp(IIF)I

    move-result v0

    .line 18
    invoke-virtual {p0, p1}, Lcom/coloros/anim/value/EffectiveRelativeIntegerValueCallback;->getOffset(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v0, p0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/coloros/anim/value/EffectiveRelativeIntegerValueCallback;->getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
