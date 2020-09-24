.class public Lcom/coloros/anim/model/content/PolystarShape;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final innerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final innerRoundedness:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final outerRoundedness:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final points:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

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

.field private final rotation:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final type:Lcom/coloros/anim/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/content/PolystarShape$Type;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/model/content/PolystarShape$Type;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/coloros/anim/model/content/PolystarShape;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/coloros/anim/model/content/PolystarShape;->type:Lcom/coloros/anim/model/content/PolystarShape$Type;

    .line 31
    iput-object p3, p0, Lcom/coloros/anim/model/content/PolystarShape;->points:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 32
    iput-object p4, p0, Lcom/coloros/anim/model/content/PolystarShape;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    .line 33
    iput-object p5, p0, Lcom/coloros/anim/model/content/PolystarShape;->rotation:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 34
    iput-object p6, p0, Lcom/coloros/anim/model/content/PolystarShape;->innerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 35
    iput-object p7, p0, Lcom/coloros/anim/model/content/PolystarShape;->outerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 36
    iput-object p8, p0, Lcom/coloros/anim/model/content/PolystarShape;->innerRoundedness:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 37
    iput-object p9, p0, Lcom/coloros/anim/model/content/PolystarShape;->outerRoundedness:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 38
    iput-boolean p10, p0, Lcom/coloros/anim/model/content/PolystarShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public getInnerRadius()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->innerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getInnerRoundedness()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->innerRoundedness:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOuterRadius()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->outerRadius:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getOuterRoundedness()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->outerRoundedness:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getPoints()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->points:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

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

    .line 54
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->position:Lcom/coloros/anim/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getRotation()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->rotation:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getType()Lcom/coloros/anim/model/content/PolystarShape$Type;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->type:Lcom/coloros/anim/model/content/PolystarShape$Type;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/PolystarShape;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 2

    .line 83
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolystarShape to RepeaterContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 86
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/content/PolystarContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/animation/content/PolystarContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/PolystarShape;)V

    return-object v0
.end method
