.class public Lcom/coloros/anim/animation/content/ShapeContent;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lcom/coloros/anim/animation/content/PathContent;
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private isPathValid:Z

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final shapeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/coloros/anim/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapePath;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 22
    new-instance v0, Lcom/coloros/anim/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/coloros/anim/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->trimPaths:Lcom/coloros/anim/animation/content/CompoundTrimPathContent;

    .line 25
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapePath;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapePath;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->hidden:Z

    .line 27
    iput-object p1, p0, Lcom/coloros/anim/animation/content/ShapeContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    .line 28
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapePath;->getShapePath()Lcom/coloros/anim/model/animatable/AnimatableShapeValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableShapeValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/ShapeContent;->shapeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 29
    iget-object p1, p0, Lcom/coloros/anim/animation/content/ShapeContent;->shapeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 30
    iget-object p1, p0, Lcom/coloros/anim/animation/content/ShapeContent;->shapeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->isPathValid:Z

    .line 40
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    return-object p0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 65
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 66
    iput-boolean v1, p0, Lcom/coloros/anim/animation/content/ShapeContent;->isPathValid:Z

    .line 67
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    return-object p0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/ShapeContent;->shapeAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 71
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 73
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->trimPaths:Lcom/coloros/anim/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/coloros/anim/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 75
    iput-boolean v1, p0, Lcom/coloros/anim/animation/content/ShapeContent;->isPathValid:Z

    .line 76
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/ShapeContent;->invalidate()V

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

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/animation/content/Content;

    .line 47
    instance-of v1, v0, Lcom/coloros/anim/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coloros/anim/animation/content/TrimPathContent;

    .line 48
    invoke-virtual {v0}, Lcom/coloros/anim/animation/content/TrimPathContent;->getType()Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/coloros/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ShapeContent;->trimPaths:Lcom/coloros/anim/animation/content/CompoundTrimPathContent;

    invoke-virtual {v1, v0}, Lcom/coloros/anim/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/coloros/anim/animation/content/TrimPathContent;)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/coloros/anim/animation/content/TrimPathContent;->addListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
