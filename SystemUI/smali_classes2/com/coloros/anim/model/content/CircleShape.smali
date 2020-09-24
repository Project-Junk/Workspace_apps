.class public Lcom/coloros/anim/model/content/CircleShape;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# instance fields
.field private final hidden:Z

.field private final isReversed:Z

.field private final name:Ljava/lang/String;

.field private final position:Lcom/coloros/anim/model/animatable/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Lcom/coloros/anim/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/animatable/AnimatableValue;Lcom/coloros/anim/model/animatable/AnimatablePointValue;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/coloros/anim/model/animatable/AnimatablePointValue;",
            "ZZ)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/coloros/anim/model/content/CircleShape;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/coloros/anim/model/content/CircleShape;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    .line 24
    iput-object p3, p0, Lcom/coloros/anim/model/content/CircleShape;->size:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    .line 25
    iput-boolean p4, p0, Lcom/coloros/anim/model/content/CircleShape;->isReversed:Z

    .line 26
    iput-boolean p5, p0, Lcom/coloros/anim/model/content/CircleShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/anim/model/content/CircleShape;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Lcom/coloros/anim/model/animatable/AnimatableValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/coloros/anim/model/content/CircleShape;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getSize()Lcom/coloros/anim/model/animatable/AnimatablePointValue;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/anim/model/content/CircleShape;->size:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/CircleShape;->hidden:Z

    return p0
.end method

.method public isReversed()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/CircleShape;->isReversed:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 2

    .line 31
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CircleShape::toContent layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 34
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/content/EllipseContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/animation/content/EllipseContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/CircleShape;)V

    return-object v0
.end method
