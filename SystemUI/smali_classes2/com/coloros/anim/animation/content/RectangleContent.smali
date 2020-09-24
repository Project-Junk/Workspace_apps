.class public Lcom/coloros/anim/animation/content/RectangleContent;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/coloros/anim/animation/content/KeyPathElementContent;
.implements Lcom/coloros/anim/animation/content/PathContent;


# instance fields
.field private final cornerRadiusAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private isPathValid:Z

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private final sizeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/coloros/anim/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/RectangleShape;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Lcom/coloros/anim/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/coloros/anim/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->trimPaths:Lcom/coloros/anim/animation/content/CompoundTrimPathContent;

    .line 37
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/RectangleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/RectangleShape;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->hidden:Z

    .line 39
    iput-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    .line 40
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/RectangleShape;->getPosition()Lcom/coloros/anim/model/animatable/AnimatableValue;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/anim/model/animatable/AnimatableValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->positionAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 41
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/RectangleShape;->getSize()Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->sizeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 42
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/RectangleShape;->getCornerRadius()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 44
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->positionAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->sizeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 46
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->positionAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 49
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->sizeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    iget-object p1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->isPathValid:Z

    .line 65
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .locals 0
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

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 15

    .line 83
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object p0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 89
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 90
    iput-boolean v1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->isPathValid:Z

    .line 91
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object p0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->sizeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 95
    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 96
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    .line 97
    iget-object v4, p0, Lcom/coloros/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    check-cast v4, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;

    .line 98
    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v4

    .line 99
    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_3

    move v4, v6

    .line 105
    :cond_3
    iget-object v6, p0, Lcom/coloros/anim/animation/content/RectangleContent;->positionAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 107
    iget-object v7, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v0

    add-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 109
    iget-object v7, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v0

    sub-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v7, v4, v5

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    if-lez v7, :cond_4

    .line 112
    iget-object v10, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v2

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v0

    sub-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v2

    iget v14, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v0

    invoke-virtual {v10, v11, v13, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    iget-object v10, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v5, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 119
    :cond_4
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    add-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_5

    .line 122
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v2

    add-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v0

    invoke-virtual {v5, v10, v11, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v10, v9, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 129
    :cond_5
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_6

    .line 132
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    iget v12, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v2

    mul-float v13, v4, v3

    add-float/2addr v12, v13

    iget v14, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v0

    add-float/2addr v14, v13

    invoke-virtual {v5, v10, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v5, v10, v11, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 139
    :cond_6
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    sub-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_7

    .line 142
    iget-object v5, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v2

    mul-float/2addr v4, v3

    sub-float/2addr v7, v4

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    iget v2, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    add-float/2addr v2, v4

    invoke-virtual {v5, v7, v3, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 146
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 150
    iget-object v0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->trimPaths:Lcom/coloros/anim/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/coloros/anim/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 152
    iput-boolean v1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->isPathValid:Z

    .line 153
    iget-object p0, p0, Lcom/coloros/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/RectangleContent;->invalidate()V

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

    .line 159
    invoke-static {p1, p2, p3, p4, p0}, Lcom/coloros/anim/utils/MiscUtils;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;Lcom/coloros/anim/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const/4 p2, 0x0

    .line 70
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 71
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/animation/content/Content;

    .line 72
    instance-of v1, v0, Lcom/coloros/anim/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coloros/anim/animation/content/TrimPathContent;

    .line 73
    invoke-virtual {v0}, Lcom/coloros/anim/animation/content/TrimPathContent;->getType()Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/coloros/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/coloros/anim/animation/content/RectangleContent;->trimPaths:Lcom/coloros/anim/animation/content/CompoundTrimPathContent;

    invoke-virtual {v1, v0}, Lcom/coloros/anim/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/coloros/anim/animation/content/TrimPathContent;)V

    .line 76
    invoke-virtual {v0, p0}, Lcom/coloros/anim/animation/content/TrimPathContent;->addListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
