.class public Lcom/coloros/anim/model/layer/CompositionLayer;
.super Lcom/coloros/anim/model/layer/BaseLayer;
.source "CompositionLayer.java"


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final rect:Landroid/graphics/RectF;

.field private timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;Ljava/util/List;Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/EffectiveAnimationDrawable;",
            "Lcom/coloros/anim/model/layer/Layer;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/layer/Layer;",
            ">;",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 40
    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getTimeRemapping()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 42
    sget-boolean v2, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CompositionLayer::create timeRemapping animation, this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    iget-object p2, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/model/layer/CompositionLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    iget-object p2, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_0

    .line 50
    :cond_1
    iput-object v1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 53
    :goto_0
    new-instance p2, Landroid/util/LongSparseArray;

    .line 54
    invoke-virtual {p4}, Lcom/coloros/anim/EffectiveAnimationComposition;->getLayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 57
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v0, :cond_6

    .line 58
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/model/layer/Layer;

    .line 59
    sget-boolean v6, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v6, :cond_2

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CompositionLayer::i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; lm.type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/coloros/anim/model/layer/Layer;->getLayerType()Lcom/coloros/anim/model/layer/Layer$LayerType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; lm.name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; lm.id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/coloros/anim/model/layer/Layer;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-static {v6}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 63
    :cond_2
    invoke-static {v5, p1, p4}, Lcom/coloros/anim/model/layer/BaseLayer;->forModel(Lcom/coloros/anim/model/layer/Layer;Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/layer/BaseLayer;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v6}, Lcom/coloros/anim/model/layer/BaseLayer;->getLayerModel()Lcom/coloros/anim/model/layer/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coloros/anim/model/layer/Layer;->getId()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_4

    .line 69
    invoke-virtual {v3, v6}, Lcom/coloros/anim/model/layer/BaseLayer;->setMatteLayer(Lcom/coloros/anim/model/layer/BaseLayer;)V

    move-object v3, v1

    goto :goto_2

    .line 72
    :cond_4
    iget-object v7, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    sget-object v4, Lcom/coloros/anim/model/layer/CompositionLayer$1;->$SwitchMap$com$coloros$anim$model$layer$Layer$MatteType:[I

    invoke-virtual {v5}, Lcom/coloros/anim/model/layer/Layer;->getMatteType()Lcom/coloros/anim/model/layer/Layer$MatteType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/anim/model/layer/Layer$MatteType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v6

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 82
    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    if-ge v4, p0, :cond_9

    .line 83
    invoke-virtual {p2, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    .line 84
    invoke-virtual {p2, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/model/layer/BaseLayer;

    if-nez p0, :cond_7

    goto :goto_4

    .line 90
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getLayerModel()Lcom/coloros/anim/model/layer/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/layer/Layer;->getParentId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/model/layer/BaseLayer;

    if-eqz p1, :cond_8

    .line 92
    invoke-virtual {p0, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->setParentLayer(Lcom/coloros/anim/model/layer/BaseLayer;)V

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 194
    invoke-super {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    .line 196
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 201
    iget-object p1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/model/layer/CompositionLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    const-string v0, "CompositionLayer#draw"

    .line 99
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    iget-object v1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/Layer;->getPreCompWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v3}, Lcom/coloros/anim/model/layer/Layer;->getPreCompHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget-object v1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 104
    iget-object v1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 106
    iget-object v3, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/model/layer/BaseLayer;

    .line 111
    invoke-virtual {v3, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 121
    iget-object p2, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 124
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLayers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    return-object p0
.end method

.method public hasMasks()Z
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 149
    iget-object v2, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/model/layer/BaseLayer;

    .line 150
    instance-of v3, v2, Lcom/coloros/anim/model/layer/ShapeLayer;

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    return v1

    .line 155
    :cond_0
    instance-of v3, v2, Lcom/coloros/anim/model/layer/CompositionLayer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/coloros/anim/model/layer/CompositionLayer;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMasks()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 160
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 162
    :cond_3
    iget-object p0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasMatte()Z
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMatteOnThisLayer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 173
    iget-object v2, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/model/layer/BaseLayer;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 178
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 180
    :cond_3
    iget-object p0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected resolveChildKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/KeyPath;",
            ">;",
            "Lcom/coloros/anim/model/KeyPath;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/coloros/anim/model/layer/BaseLayer;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 130
    invoke-super {p0, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->setProgress(F)V

    .line 131
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getComposition()Lcom/coloros/anim/EffectiveAnimationComposition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getDuration()F

    move-result p1

    .line 133
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    div-float p1, v0, p1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    div-float/2addr p1, v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getStartProgress()F

    move-result v0

    sub-float/2addr p1, v0

    .line 141
    iget-object v0, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 142
    iget-object v1, p0, Lcom/coloros/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->setProgress(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
