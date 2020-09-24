.class public Lcom/coloros/anim/model/animatable/AnimatableTransform;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lcom/coloros/anim/animation/content/ModifierContent;
.implements Lcom/coloros/anim/model/content/ContentModel;


# instance fields
.field private final anchorPoint:Lcom/coloros/anim/model/animatable/AnimatablePathValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final position:Lcom/coloros/anim/model/animatable/AnimatableValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scale:Lcom/coloros/anim/model/animatable/AnimatableScaleValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skew:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skewAngle:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final startOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 38
    invoke-direct/range {v0 .. v9}, Lcom/coloros/anim/model/animatable/AnimatableTransform;-><init>(Lcom/coloros/anim/model/animatable/AnimatablePathValue;Lcom/coloros/anim/model/animatable/AnimatableValue;Lcom/coloros/anim/model/animatable/AnimatableScaleValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/anim/model/animatable/AnimatablePathValue;Lcom/coloros/anim/model/animatable/AnimatableValue;Lcom/coloros/anim/model/animatable/AnimatableScaleValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/model/animatable/AnimatablePathValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/coloros/anim/model/animatable/AnimatableValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/coloros/anim/model/animatable/AnimatableScaleValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/model/animatable/AnimatablePathValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/coloros/anim/model/animatable/AnimatableScaleValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->anchorPoint:Lcom/coloros/anim/model/animatable/AnimatablePathValue;

    .line 47
    iput-object p2, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    .line 48
    iput-object p3, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->scale:Lcom/coloros/anim/model/animatable/AnimatableScaleValue;

    .line 49
    iput-object p4, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->rotation:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 50
    iput-object p5, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    .line 51
    iput-object p6, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->startOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 52
    iput-object p7, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->endOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 53
    iput-object p8, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->skew:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 54
    iput-object p9, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->skewAngle:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-void
.end method

.method private print()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableTransform:{"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->anchorPoint:Lcom/coloros/anim/model/animatable/AnimatablePathValue;

    if-eqz v1, :cond_0

    const-string v1, "anchorPoint = "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->anchorPoint:Lcom/coloros/anim/model/animatable/AnimatablePathValue;

    invoke-virtual {v1}, Lcom/coloros/anim/model/animatable/AnimatablePathValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->scale:Lcom/coloros/anim/model/animatable/AnimatableScaleValue;

    if-eqz v1, :cond_1

    const-string v1, "scale = "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->scale:Lcom/coloros/anim/model/animatable/AnimatableScaleValue;

    invoke-virtual {v1}, Lcom/coloros/anim/model/animatable/AnimatableScaleValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->rotation:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_2

    const-string v1, "rotation = "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->rotation:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    if-eqz v1, :cond_3

    const-string v1, "opacity = "

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    invoke-virtual {v1}, Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->skew:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_4

    const-string v1, "skew = "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->skew:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->skewAngle:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_5

    const-string v1, "skewAngle = "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->skewAngle:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->startOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_6

    const-string v1, "startOpacity = "

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->startOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->endOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_7

    const-string v1, "endOpacity = "

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->endOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p0, "}"

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAnimation()Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;
    .locals 2

    .line 103
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableTransform create TransformKeyframeAnimation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/coloros/anim/model/animatable/AnimatableTransform;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-direct {v0, p0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/coloros/anim/model/animatable/AnimatableTransform;)V

    return-object v0
.end method

.method public getAnchorPoint()Lcom/coloros/anim/model/animatable/AnimatablePathValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->anchorPoint:Lcom/coloros/anim/model/animatable/AnimatablePathValue;

    return-object p0
.end method

.method public getEndOpacity()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->endOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getOpacity()Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public getPosition()Lcom/coloros/anim/model/animatable/AnimatableValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getRotation()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->rotation:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getScale()Lcom/coloros/anim/model/animatable/AnimatableScaleValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->scale:Lcom/coloros/anim/model/animatable/AnimatableScaleValue;

    return-object p0
.end method

.method public getSkew()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->skew:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getSkewAngle()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->skewAngle:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getStartOpacity()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableTransform;->startOpacity:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
