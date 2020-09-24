.class public Lcom/coloros/anim/animation/content/StrokeContent;
.super Lcom/coloros/anim/animation/content/BaseStrokeContent;
.source "StrokeContent.java"


# instance fields
.field private final colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final layer:Lcom/coloros/anim/model/layer/BaseLayer;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapeStroke;)V
    .locals 11

    .line 30
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getCapType()Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 31
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getJoinType()Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getMiterLimit()F

    move-result v6

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getOpacity()Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    .line 32
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getWidth()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v8

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getDashOffset()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 30
    invoke-direct/range {v1 .. v10}, Lcom/coloros/anim/animation/content/BaseStrokeContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)V

    .line 33
    iput-object p2, p0, Lcom/coloros/anim/animation/content/StrokeContent;->layer:Lcom/coloros/anim/model/layer/BaseLayer;

    .line 34
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->isHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->hidden:Z

    .line 36
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeStroke;->getColor()Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 37
    iget-object p1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 38
    iget-object p0, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

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

    .line 61
    invoke-super {p0, p1, p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent;->addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    .line 62
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 63
    iget-object p0, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 70
    iget-object p1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    iget-object p1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->layer:Lcom/coloros/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 43
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/StrokeContent;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v1, Lcom/coloros/anim/animation/keyframe/ColorKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/coloros/anim/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 50
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/anim/animation/content/StrokeContent;->name:Ljava/lang/String;

    return-object p0
.end method
