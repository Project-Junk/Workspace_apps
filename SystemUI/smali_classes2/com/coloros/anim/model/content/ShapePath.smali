.class public Lcom/coloros/anim/model/content/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# instance fields
.field private final hidden:Z

.field private final index:I

.field private final name:Ljava/lang/String;

.field private final shapePath:Lcom/coloros/anim/model/animatable/AnimatableShapeValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/coloros/anim/model/animatable/AnimatableShapeValue;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/coloros/anim/model/content/ShapePath;->name:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/coloros/anim/model/content/ShapePath;->index:I

    .line 19
    iput-object p3, p0, Lcom/coloros/anim/model/content/ShapePath;->shapePath:Lcom/coloros/anim/model/animatable/AnimatableShapeValue;

    .line 20
    iput-boolean p4, p0, Lcom/coloros/anim/model/content/ShapePath;->hidden:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapePath;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getShapePath()Lcom/coloros/anim/model/animatable/AnimatableShapeValue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapePath;->shapePath:Lcom/coloros/anim/model/animatable/AnimatableShapeValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/ShapePath;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 2

    .line 33
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath to ShapeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 36
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/content/ShapeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/animation/content/ShapeContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapePath;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/content/ShapePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/anim/model/content/ShapePath;->index:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
