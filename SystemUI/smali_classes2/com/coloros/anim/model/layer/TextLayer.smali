.class public Lcom/coloros/anim/model/layer/TextLayer;
.super Lcom/coloros/anim/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/coloros/anim/EffectiveAnimationComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/anim/model/FontCharacter;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private strokeColorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private final tempCharArray:[C

.field private final textAnimation:Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;

.field private trackingAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
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
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    const/4 v0, 0x1

    .line 37
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/coloros/anim/model/layer/TextLayer;->tempCharArray:[C

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coloros/anim/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 39
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/coloros/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 40
    new-instance v1, Lcom/coloros/anim/model/layer/TextLayer$1;

    invoke-direct {v1, p0, v0}, Lcom/coloros/anim/model/layer/TextLayer$1;-><init>(Lcom/coloros/anim/model/layer/TextLayer;I)V

    iput-object v1, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v1, Lcom/coloros/anim/model/layer/TextLayer$2;

    invoke-direct {v1, p0, v0}, Lcom/coloros/anim/model/layer/TextLayer$2;-><init>(Lcom/coloros/anim/model/layer/TextLayer;I)V

    iput-object v1, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    .line 62
    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getComposition()Lcom/coloros/anim/EffectiveAnimationComposition;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 64
    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getText()Lcom/coloros/anim/model/animatable/AnimatableTextFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->textAnimation:Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;

    .line 65
    iget-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->textAnimation:Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 66
    iget-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->textAnimation:Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/model/layer/TextLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getTextProperties()Lcom/coloros/anim/model/animatable/AnimatableTextProperties;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p2, p1, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->color:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    if-eqz p2, :cond_0

    .line 70
    iget-object p2, p1, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->color:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    invoke-virtual {p2}, Lcom/coloros/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 71
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 72
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/model/layer/TextLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 75
    iget-object p2, p1, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->stroke:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    if-eqz p2, :cond_1

    .line 76
    iget-object p2, p1, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->stroke:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    invoke-virtual {p2}, Lcom/coloros/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 77
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/model/layer/TextLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 81
    iget-object p2, p1, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_2

    .line 82
    iget-object p2, p1, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p2}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 83
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/model/layer/TextLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 87
    iget-object p2, p1, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->tracking:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_3

    .line 88
    iget-object p1, p1, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->tracking:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->trackingAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 89
    iget-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->trackingAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 90
    iget-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->trackingAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/model/layer/TextLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    return-void
.end method

.method private applyJustification(Lcom/coloros/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .locals 1

    .line 291
    sget-object p0, Lcom/coloros/anim/model/layer/TextLayer$3;->$SwitchMap$com$coloros$anim$model$DocumentData$Justification:[I

    invoke-virtual {p1}, Lcom/coloros/anim/model/DocumentData$Justification;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p3

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    .line 299
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    neg-float p0, p3

    .line 296
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    .line 350
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v6, p2

    .line 356
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/coloros/anim/model/FontCharacter;Landroid/graphics/Matrix;FLcom/coloros/anim/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 7

    .line 310
    invoke-direct {p0, p1}, Lcom/coloros/anim/model/layer/TextLayer;->getContentsForCharacter(Lcom/coloros/anim/model/FontCharacter;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 311
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 312
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 313
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 314
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 315
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget-wide v5, p4, Lcom/coloros/anim/model/DocumentData;->baselineShift:D

    neg-double v5, v5

    double-to-float v5, v5

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 316
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 317
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 318
    iget-boolean v3, p4, Lcom/coloros/anim/model/DocumentData;->strokeOverFill:Z

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/coloros/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 320
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/coloros/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 322
    :cond_0
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/coloros/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 323
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/coloros/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(CLcom/coloros/anim/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/coloros/anim/model/layer/TextLayer;->tempCharArray:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 340
    iget-boolean p1, p2, Lcom/coloros/anim/model/DocumentData;->strokeOverFill:Z

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->tempCharArray:[C

    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 342
    iget-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->tempCharArray:[C

    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->tempCharArray:[C

    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 345
    iget-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer;->tempCharArray:[C

    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/coloros/anim/model/DocumentData;Landroid/graphics/Canvas;F)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 260
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 262
    invoke-direct {p0, v2, p2, p3}, Lcom/coloros/anim/model/layer/TextLayer;->drawCharacterFromFont(CLcom/coloros/anim/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 263
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->tempCharArray:[C

    aput-char v2, v3, v0

    .line 264
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v2

    .line 266
    iget v3, p2, Lcom/coloros/anim/model/DocumentData;->tracking:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 267
    iget-object v4, p0, Lcom/coloros/anim/model/layer/TextLayer;->trackingAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_0

    .line 268
    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    :cond_0
    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 1

    .line 329
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    return-void

    .line 335
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/coloros/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/coloros/anim/model/Font;Landroid/graphics/Canvas;FF)V
    .locals 8

    const/4 v0, 0x0

    .line 187
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 189
    invoke-virtual {p4}, Lcom/coloros/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/coloros/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/coloros/anim/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/coloros/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/model/FontCharacter;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p0

    move-object v3, v1

    move-object v4, p3

    move v5, p7

    move-object v6, p2

    move-object v7, p5

    .line 195
    invoke-direct/range {v2 .. v7}, Lcom/coloros/anim/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/coloros/anim/model/FontCharacter;Landroid/graphics/Matrix;FLcom/coloros/anim/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual {v1}, Lcom/coloros/anim/model/FontCharacter;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p7

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p6

    .line 198
    iget v2, p2, Lcom/coloros/anim/model/DocumentData;->tracking:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 199
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->trackingAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v3}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    :cond_1
    mul-float/2addr v2, p6

    add-float/2addr v1, v2

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawTextGlyphs(Lcom/coloros/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/coloros/anim/model/Font;Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    .line 151
    iget-wide v0, v9, Lcom/coloros/anim/model/DocumentData;->size:D

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    .line 152
    invoke-static/range {p2 .. p2}, Lcom/coloros/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v12

    .line 154
    iget-object v0, v9, Lcom/coloros/anim/model/DocumentData;->text:Ljava/lang/String;

    .line 157
    iget-wide v1, v9, Lcom/coloros/anim/model/DocumentData;->lineHeight:D

    double-to-float v1, v1

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float v13, v1, v2

    .line 160
    invoke-direct {v8, v0}, Lcom/coloros/anim/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 161
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v15, :cond_0

    .line 164
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object/from16 v6, p3

    .line 165
    invoke-direct {v8, v1, v6, v11, v12}, Lcom/coloros/anim/model/layer/TextLayer;->getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/coloros/anim/model/Font;FF)F

    move-result v0

    .line 167
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 170
    iget-object v2, v9, Lcom/coloros/anim/model/DocumentData;->justification:Lcom/coloros/anim/model/DocumentData$Justification;

    invoke-direct {v8, v2, v10, v0}, Lcom/coloros/anim/model/layer/TextLayer;->applyJustification(Lcom/coloros/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v15, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v2, v7

    mul-float/2addr v2, v13

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    .line 175
    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move/from16 v16, v7

    move v7, v11

    .line 178
    invoke-direct/range {v0 .. v7}, Lcom/coloros/anim/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/coloros/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/coloros/anim/model/Font;Landroid/graphics/Canvas;FF)V

    .line 181
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v16, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawTextWithFont(Lcom/coloros/anim/model/DocumentData;Lcom/coloros/anim/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 7

    .line 209
    invoke-static {p3}, Lcom/coloros/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/coloros/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p2}, Lcom/coloros/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/coloros/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v1, p1, Lcom/coloros/anim/model/DocumentData;->text:Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v2}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getTextDelegate()Lcom/coloros/anim/TextDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v2, v1}, Lcom/coloros/anim/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 220
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-wide v2, p1, Lcom/coloros/anim/model/DocumentData;->size:D

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 222
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 225
    iget-wide v2, p1, Lcom/coloros/anim/model/DocumentData;->lineHeight:D

    double-to-float p2, v2

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr p2, v2

    .line 228
    invoke-direct {p0, v1}, Lcom/coloros/anim/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 232
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 233
    iget-object v5, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 236
    iget-object v6, p1, Lcom/coloros/anim/model/DocumentData;->justification:Lcom/coloros/anim/model/DocumentData$Justification;

    invoke-direct {p0, v6, p4, v5}, Lcom/coloros/anim/model/layer/TextLayer;->applyJustification(Lcom/coloros/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, p2

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    .line 241
    invoke-virtual {p4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    invoke-direct {p0, v4, p1, p4, v0}, Lcom/coloros/anim/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/coloros/anim/model/DocumentData;Landroid/graphics/Canvas;F)V

    .line 247
    invoke-virtual {p4, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getContentsForCharacter(Lcom/coloros/anim/model/FontCharacter;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/model/FontCharacter;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/coloros/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object p0, p0, Lcom/coloros/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 367
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/model/content/ShapeGroup;

    .line 368
    new-instance v5, Lcom/coloros/anim/animation/content/ContentGroup;

    iget-object v6, p0, Lcom/coloros/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-direct {v5, v6, p0, v4}, Lcom/coloros/anim/animation/content/ContentGroup;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapeGroup;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    :cond_1
    iget-object p0, p0, Lcom/coloros/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/coloros/anim/model/Font;FF)F
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 278
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 279
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 280
    invoke-virtual {p2}, Lcom/coloros/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/coloros/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/coloros/anim/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 281
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v3}, Lcom/coloros/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/model/FontCharacter;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v3, v0

    .line 285
    invoke-virtual {v2}, Lcom/coloros/anim/model/FontCharacter;->getWidth()D

    move-result-wide v5

    float-to-double v7, p3

    mul-double/2addr v5, v7

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v5, v7

    float-to-double v7, p4

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "\r"

    const-string v0, "\r\n"

    .line 253
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 254
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
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

    .line 377
    invoke-super {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    .line 378
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/model/layer/TextLayer;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 380
    :cond_0
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 382
    :cond_1
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 384
    :cond_2
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/coloros/anim/model/layer/TextLayer;->trackingAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p0, :cond_3

    .line 385
    invoke-virtual {p0, p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8

    const-string p3, "TextLayer#draw"

    .line 103
    invoke-static {p3}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget-object v0, p0, Lcom/coloros/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->useTextGlyphs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/model/layer/TextLayer;->textAnimation:Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/model/DocumentData;

    .line 109
    iget-object v1, p0, Lcom/coloros/anim/model/layer/TextLayer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getFonts()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/coloros/anim/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/model/Font;

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 117
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/coloros/anim/model/DocumentData;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_3

    .line 123
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/coloros/anim/model/DocumentData;->strokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    :goto_1
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    const/16 v3, 0x64

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    mul-int/lit16 v2, v2, 0xff

    .line 128
    div-int/2addr v2, v3

    .line 129
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_5

    .line 133
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 135
    :cond_5
    invoke-static {p2}, Lcom/coloros/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    .line 136
    iget-object v3, p0, Lcom/coloros/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-wide v4, v0, Lcom/coloros/anim/model/DocumentData;->strokeWidth:D

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    float-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    :goto_3
    iget-object v2, p0, Lcom/coloros/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v2}, Lcom/coloros/anim/EffectiveAnimationDrawable;->useTextGlyphs()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 140
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/coloros/anim/model/layer/TextLayer;->drawTextGlyphs(Lcom/coloros/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/coloros/anim/model/Font;Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 142
    :cond_6
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/coloros/anim/model/layer/TextLayer;->drawTextWithFont(Lcom/coloros/anim/model/DocumentData;Lcom/coloros/anim/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 145
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    invoke-static {p3}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 98
    iget-object p2, p0, Lcom/coloros/anim/model/layer/TextLayer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p2}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/coloros/anim/model/layer/TextLayer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
