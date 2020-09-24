.class public Lcom/coloros/anim/model/content/RectangleShape;
.super Ljava/lang/Object;
.source "RectangleShape.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# instance fields
.field private final cornerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

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
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/animatable/AnimatableValue;Lcom/coloros/anim/model/animatable/AnimatablePointValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Z)V
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
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/coloros/anim/model/content/RectangleShape;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/coloros/anim/model/content/RectangleShape;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    .line 25
    iput-object p3, p0, Lcom/coloros/anim/model/content/RectangleShape;->size:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    .line 26
    iput-object p4, p0, Lcom/coloros/anim/model/content/RectangleShape;->cornerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 27
    iput-boolean p5, p0, Lcom/coloros/anim/model/content/RectangleShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCornerRadius()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/anim/model/content/RectangleShape;->cornerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/anim/model/content/RectangleShape;->name:Ljava/lang/String;

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

    .line 43
    iget-object p0, p0, Lcom/coloros/anim/model/content/RectangleShape;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getSize()Lcom/coloros/anim/model/animatable/AnimatablePointValue;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/anim/model/content/RectangleShape;->size:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/RectangleShape;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 2

    .line 52
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape to RectangleContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/content/RectangleContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/animation/content/RectangleContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/RectangleShape;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/content/RectangleShape;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/model/content/RectangleShape;->size:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
