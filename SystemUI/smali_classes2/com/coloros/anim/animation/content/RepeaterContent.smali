.class public Lcom/coloros/anim/animation/content/RepeaterContent;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements Lcom/coloros/anim/animation/content/DrawingContent;
.implements Lcom/coloros/anim/animation/content/PathContent;
.implements Lcom/coloros/anim/animation/content/GreedyContent;
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/coloros/anim/animation/content/KeyPathElementContent;


# instance fields
.field private contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

.field private final copies:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final layer:Lcom/coloros/anim/model/layer/BaseLayer;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/Repeater;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    .line 41
    iput-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    .line 42
    iput-object p2, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->layer:Lcom/coloros/anim/model/layer/BaseLayer;

    .line 43
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/Repeater;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/Repeater;->isHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->hidden:Z

    .line 45
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/Repeater;->getCopies()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->copies:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->copies:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 47
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->copies:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 49
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/Repeater;->getOffset()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->offset:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 50
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->offset:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 51
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->offset:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 53
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/Repeater;->getTransform()Lcom/coloros/anim/model/animatable/AnimatableTransform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    .line 54
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/coloros/anim/model/layer/BaseLayer;)V

    .line 55
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 85
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 86
    new-instance p1, Lcom/coloros/anim/animation/content/ContentGroup;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iget-object v3, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->layer:Lcom/coloros/anim/model/layer/BaseLayer;

    iget-boolean v5, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->hidden:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/coloros/anim/animation/content/ContentGroup;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/coloros/anim/model/animatable/AnimatableTransform;)V

    iput-object p1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    return-void
.end method

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

    .line 147
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->REPEATER_COPIES:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 152
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->copies:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->REPEATER_OFFSET:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 154
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->offset:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 114
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->copies:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->offset:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 117
    iget-object v2, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getStartOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 119
    iget-object v4, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getEndOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 121
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 122
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    .line 123
    invoke-static {v2, v4, v7}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    .line 124
    iget-object v6, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    iget-object v7, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lcom/coloros/anim/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 103
    iget-object v1, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->copies:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 104
    iget-object v2, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->offset:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 106
    iget-object v3, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v3, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method public resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V
    .locals 0
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

    .line 141
    invoke-static {p1, p2, p3, p4, p0}, Lcom/coloros/anim/utils/MiscUtils;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;Lcom/coloros/anim/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RepeaterContent;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
