.class public abstract Lcom/coloros/anim/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/coloros/anim/animation/content/KeyPathElementContent;
.implements Lcom/coloros/anim/animation/content/DrawingContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


# instance fields
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

.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field private final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field private final layer:Lcom/coloros/anim/model/layer/BaseLayer;

.field private final opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/EffectiveAnimationDrawable;",
            "Lcom/coloros/anim/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/coloros/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    .line 61
    iput-object p2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->layer:Lcom/coloros/anim/model/layer/BaseLayer;

    .line 63
    iget-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    iget-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 66
    iget-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 68
    invoke-virtual {p6}, Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    invoke-virtual {p7}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p9}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 76
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 77
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    const/4 p1, 0x0

    move p3, p1

    .line 79
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 80
    iget-object p4, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p5}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 83
    :cond_1
    iget-object p3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 84
    iget-object p3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    move p3, p1

    .line 85
    :goto_2
    iget-object p4, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 86
    iget-object p4, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p4}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 88
    :cond_2
    iget-object p3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_3

    .line 89
    invoke-virtual {p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 92
    :cond_3
    iget-object p2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 93
    iget-object p2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 95
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 96
    iget-object p2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_5

    .line 99
    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 5

    const-string v0, "StrokeContent#applyDashPattern"

    .line 276
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void

    .line 282
    :cond_0
    invoke-static {p1}, Lcom/coloros/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v1, 0x0

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    iget-object v3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 289
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 291
    aput v4, v2, v1

    goto :goto_1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v2, v1

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 295
    aput v4, v2, v1

    .line 298
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v2, v1

    mul-float/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_3
    iget-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 301
    :goto_2
    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object p0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v2, p0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 302
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 12

    const-string v0, "StrokeContent#applyTrimPath"

    .line 183
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 184
    invoke-static {p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/coloros/anim/animation/content/TrimPathContent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 185
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 189
    invoke-static {p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 190
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v3}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 193
    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    .line 194
    :goto_1
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_1

    .line 197
    :cond_2
    invoke-static {p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/coloros/anim/animation/content/TrimPathContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/anim/animation/content/TrimPathContent;->getOffset()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    .line 199
    invoke-static {p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/coloros/anim/animation/content/TrimPathContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/anim/animation/content/TrimPathContent;->getStart()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 201
    invoke-static {p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/coloros/anim/animation/content/TrimPathContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/anim/animation/content/TrimPathContent;->getEnd()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v1

    div-float/2addr v6, v5

    add-float/2addr v6, v2

    .line 204
    invoke-static {p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    move v7, v5

    :goto_2
    if-ltz v2, :cond_a

    .line 205
    iget-object v8, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v9}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 206
    iget-object v8, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v8, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 207
    iget-object v8, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v9, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v8, v9, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 208
    iget-object v8, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    cmpl-float v9, v6, v1

    const/high16 v10, 0x3f800000    # 1.0f

    if-lez v9, :cond_4

    sub-float v9, v6, v1

    add-float v11, v7, v8

    cmpg-float v11, v9, v11

    if-gez v11, :cond_4

    cmpg-float v11, v7, v9

    if-gez v11, :cond_4

    cmpl-float v11, v4, v1

    if-lez v11, :cond_3

    sub-float v11, v4, v1

    div-float/2addr v11, v8

    goto :goto_3

    :cond_3
    move v11, v5

    :goto_3
    div-float/2addr v9, v8

    .line 219
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 220
    iget-object v10, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v10, v11, v9, v5}, Lcom/coloros/anim/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 221
    iget-object v9, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_4
    add-float v9, v7, v8

    cmpg-float v11, v9, v4

    if-ltz v11, :cond_9

    cmpl-float v11, v7, v6

    if-lez v11, :cond_5

    goto :goto_6

    :cond_5
    cmpg-float v11, v9, v6

    if-gtz v11, :cond_6

    cmpg-float v11, v4, v7

    if-gez v11, :cond_6

    .line 227
    iget-object v9, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    cmpg-float v11, v4, v7

    if-gez v11, :cond_7

    move v11, v5

    goto :goto_4

    :cond_7
    sub-float v11, v4, v7

    div-float/2addr v11, v8

    :goto_4
    cmpl-float v9, v6, v9

    if-lez v9, :cond_8

    goto :goto_5

    :cond_8
    sub-float v9, v6, v7

    div-float v10, v9, v8

    .line 241
    :goto_5
    iget-object v9, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v9, v11, v10, v5}, Lcom/coloros/anim/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 242
    iget-object v9, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-float/2addr v7, v8

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 246
    :cond_a
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 316
    iget-object p0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 317
    :cond_0
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 318
    iget-object p0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 323
    :cond_2
    new-instance p1, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 325
    iget-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 326
    iget-object p1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->layer:Lcom/coloros/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const-string v0, "StrokeContent#draw"

    .line 146
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    .line 147
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v2, Lcom/coloros/anim/animation/keyframe/IntegerKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/IntegerKeyframeAnimation;->getIntValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 148
    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {p3, v2, v3}, Lcom/coloros/anim/utils/MiscUtils;->clamp(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    iget-object p3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v1, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    invoke-static {p2}, Lcom/coloros/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object p3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/4 v1, 0x0

    cmpg-float p3, p3, v1

    if-gtz p3, :cond_0

    .line 152
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    .line 157
    iget-object p3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_1

    .line 158
    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 161
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_4

    .line 162
    iget-object p3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;

    .line 165
    invoke-static {p3}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/coloros/anim/animation/content/TrimPathContent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    invoke-direct {p0, p1, p3, p2}, Lcom/coloros/anim/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_2
    const-string v1, "StrokeContent#buildPath"

    .line 168
    invoke-static {v1}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 170
    invoke-static {p3}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 171
    iget-object v4, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p3}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v5}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 173
    :cond_3
    invoke-static {v1}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    const-string p3, "StrokeContent#drawPath"

    .line 174
    invoke-static {p3}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    invoke-static {p3}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_4
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 6

    const-string p3, "StrokeContent#getBounds"

    .line 251
    invoke-static {p3}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    .line 253
    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;

    move v3, v0

    .line 255
    :goto_1
    invoke-static {v2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v5}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget-object p2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 261
    iget-object p2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast p2, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2}, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result p2

    .line 262
    iget-object v0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 264
    iget-object p0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 266
    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 272
    invoke-static {p3}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public onValueChanged()V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

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

    .line 308
    invoke-static {p1, p2, p3, p4, p0}, Lcom/coloros/anim/utils/MiscUtils;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;Lcom/coloros/anim/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/animation/content/Content;

    .line 113
    instance-of v4, v3, Lcom/coloros/anim/animation/content/TrimPathContent;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/coloros/anim/animation/content/TrimPathContent;

    .line 114
    invoke-virtual {v3}, Lcom/coloros/anim/animation/content/TrimPathContent;->getType()Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/coloros/anim/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {v2, p0}, Lcom/coloros/anim/animation/content/TrimPathContent;->addListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 123
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_1
    if-ltz p1, :cond_7

    .line 124
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/animation/content/Content;

    .line 125
    instance-of v4, v3, Lcom/coloros/anim/animation/content/TrimPathContent;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/coloros/anim/animation/content/TrimPathContent;

    .line 126
    invoke-virtual {v4}, Lcom/coloros/anim/animation/content/TrimPathContent;->getType()Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    move-result-object v5

    sget-object v6, Lcom/coloros/anim/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    if-ne v5, v6, :cond_4

    if-eqz v0, :cond_3

    .line 128
    iget-object v3, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_3
    new-instance v0, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v0, v4, v1}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/coloros/anim/animation/content/TrimPathContent;Lcom/coloros/anim/animation/content/BaseStrokeContent$1;)V

    .line 131
    invoke-virtual {v4, p0}, Lcom/coloros/anim/animation/content/TrimPathContent;->addListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    .line 132
    :cond_4
    instance-of v4, v3, Lcom/coloros/anim/animation/content/PathContent;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    .line 134
    new-instance v0, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v0, v2, v1}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/coloros/anim/animation/content/TrimPathContent;Lcom/coloros/anim/animation/content/BaseStrokeContent$1;)V

    .line 136
    :cond_5
    invoke-static {v0}, Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/coloros/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 140
    iget-object p0, p0, Lcom/coloros/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
