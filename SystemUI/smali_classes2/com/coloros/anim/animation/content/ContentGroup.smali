.class public Lcom/coloros/anim/animation/content/ContentGroup;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements Lcom/coloros/anim/animation/content/DrawingContent;
.implements Lcom/coloros/anim/animation/content/PathContent;
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/coloros/anim/model/KeyPathElement;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapeGroup;)V
    .locals 7

    .line 41
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeGroup;->isHidden()Z

    move-result v4

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coloros/anim/animation/content/ContentGroup;->contentsFromModels(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 43
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/coloros/anim/animation/content/ContentGroup;->findTransform(Ljava/util/List;)Lcom/coloros/anim/model/animatable/AnimatableTransform;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/coloros/anim/animation/content/ContentGroup;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/coloros/anim/model/animatable/AnimatableTransform;)V

    return-void
.end method

.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/coloros/anim/model/animatable/AnimatableTransform;)V
    .locals 1
    .param p6    # Lcom/coloros/anim/model/animatable/AnimatableTransform;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/EffectiveAnimationDrawable;",
            "Lcom/coloros/anim/model/layer/BaseLayer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;",
            "Lcom/coloros/anim/model/animatable/AnimatableTransform;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 47
    iput-object p3, p0, Lcom/coloros/anim/animation/content/ContentGroup;->name:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    .line 49
    iput-boolean p4, p0, Lcom/coloros/anim/animation/content/ContentGroup;->hidden:Z

    .line 50
    iput-object p5, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 51
    sget-boolean p1, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ContentGroup::name = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    :cond_0
    if-eqz p6, :cond_1

    .line 56
    invoke-virtual {p6}, Lcom/coloros/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    .line 57
    iget-object p1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/coloros/anim/model/layer/BaseLayer;)V

    .line 58
    iget-object p1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 61
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 63
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/animation/content/Content;

    .line 64
    instance-of p3, p2, Lcom/coloros/anim/animation/content/GreedyContent;

    if-eqz p3, :cond_2

    .line 65
    check-cast p2, Lcom/coloros/anim/animation/content/GreedyContent;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 69
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    .line 70
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/animation/content/GreedyContent;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p5, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/coloros/anim/animation/content/GreedyContent;->absorbContent(Ljava/util/ListIterator;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static contentsFromModels(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/EffectiveAnimationDrawable;",
            "Lcom/coloros/anim/model/layer/BaseLayer;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/content/ContentModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    sget-boolean v1, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentGroup::contentsFromModels()::contentModels.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 81
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/model/content/ContentModel;

    invoke-interface {v2, p0, p1}, Lcom/coloros/anim/model/content/ContentModel;->toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;

    move-result-object v2

    .line 82
    sget-boolean v3, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v3, :cond_1

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentGroup::contentsFromModels()::content + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_3

    .line 86
    sget-boolean v3, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v3, :cond_2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentGroup::contentsFromModels()::content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 89
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static findTransform(Ljava/util/List;)Lcom/coloros/anim/model/animatable/AnimatableTransform;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/content/ContentModel;",
            ">;)",
            "Lcom/coloros/anim/model/animatable/AnimatableTransform;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 98
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/model/content/ContentModel;

    .line 99
    instance-of v2, v1, Lcom/coloros/anim/model/animatable/AnimatableTransform;

    if-eqz v2, :cond_1

    .line 100
    sget-boolean p0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz p0, :cond_0

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentGroup::findTransform()::contentModel = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 103
    :cond_0
    check-cast v1, Lcom/coloros/anim/model/animatable/AnimatableTransform;

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
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

    .line 258
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)Z

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 175
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ContentGroup#draw"

    .line 178
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 181
    iget-object p2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz p2, :cond_2

    .line 182
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 183
    iget-object p2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x64

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    int-to-float p3, p3

    mul-float/2addr p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, p3

    float-to-int p3, p2

    .line 189
    :cond_2
    iget-object p2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 190
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 191
    instance-of v2, v1, Lcom/coloros/anim/animation/content/DrawingContent;

    if-eqz v2, :cond_4

    .line 192
    sget-boolean v2, Lcom/coloros/anim/utils/ColorLog;->DEBUG_DRAW:Z

    if-eqz v2, :cond_3

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentGroup::draw() content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v1

    check-cast v3, Lcom/coloros/anim/animation/content/DrawingContent;

    invoke-interface {v3}, Lcom/coloros/anim/animation/content/DrawingContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 195
    :cond_3
    check-cast v1, Lcom/coloros/anim/animation/content/DrawingContent;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v2, p3}, Lcom/coloros/anim/animation/content/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 198
    :cond_5
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 204
    iget-object p2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 207
    :cond_0
    iget-object p2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    iget-object p2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 209
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/animation/content/Content;

    .line 210
    instance-of v1, v0, Lcom/coloros/anim/animation/content/DrawingContent;

    if-eqz v1, :cond_1

    .line 211
    check-cast v0, Lcom/coloros/anim/animation/content/DrawingContent;

    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, Lcom/coloros/anim/animation/content/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 212
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 157
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->hidden:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    return-object p0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 165
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/animation/content/Content;

    .line 166
    instance-of v2, v1, Lcom/coloros/anim/animation/content/PathContent;

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    check-cast v1, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v1}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 170
    :cond_3
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method getPathList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/animation/content/Content;

    .line 137
    instance-of v2, v1, Lcom/coloros/anim/animation/content/PathContent;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    check-cast v1, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    return-object p0
.end method

.method getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->transformAnimation:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 150
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public onValueChanged()V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method public resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V
    .locals 4
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

    .line 220
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_KEYPATH:Z

    const-string v1, "ContentGroup::resolveChildKeyPath()"

    if-eqz v0, :cond_0

    .line 221
    invoke-static {v1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__container"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/coloros/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/coloros/anim/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/coloros/anim/model/KeyPath;

    move-result-object p4

    .line 230
    invoke-virtual {p0}, Lcom/coloros/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_KEYPATH:Z

    if-eqz v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentGroup::resolveChildKeyPath():name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 234
    :cond_2
    invoke-virtual {p4, p0}, Lcom/coloros/anim/model/KeyPath;->resolve(Lcom/coloros/anim/model/KeyPathElement;)Lcom/coloros/anim/model/KeyPath;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {p0}, Lcom/coloros/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x0

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 241
    iget-object v2, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/animation/content/Content;

    .line 242
    sget-boolean v3, Lcom/coloros/anim/utils/ColorLog;->DEBUG_KEYPATH:Z

    if-eqz v3, :cond_4

    .line 243
    invoke-static {v1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 245
    :cond_4
    instance-of v3, v2, Lcom/coloros/anim/model/KeyPathElement;

    if-eqz v3, :cond_6

    .line 246
    check-cast v2, Lcom/coloros/anim/model/KeyPathElement;

    .line 247
    sget-boolean v3, Lcom/coloros/anim/utils/ColorLog;->DEBUG_KEYPATH:Z

    if-eqz v3, :cond_5

    .line 248
    invoke-static {v1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 250
    :cond_5
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/coloros/anim/model/KeyPathElement;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
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

    .line 122
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object p1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/animation/content/Content;

    .line 127
    iget-object v1, p0, Lcom/coloros/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/coloros/anim/animation/content/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 128
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
