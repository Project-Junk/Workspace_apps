.class public Lcom/coloros/anim/model/content/ShapeTrimPath;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/model/content/ShapeTrimPath$Type;
    }
.end annotation


# instance fields
.field private final end:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final start:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final type:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/content/ShapeTrimPath$Type;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->type:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    .line 22
    iput-object p3, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->start:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 23
    iput-object p4, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->end:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 24
    iput-object p5, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 25
    iput-boolean p6, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->hidden:Z

    return-void
.end method


# virtual methods
.method public getEnd()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->end:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getStart()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->start:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getType()Lcom/coloros/anim/model/content/ShapeTrimPath$Type;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->type:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 1

    .line 54
    sget-boolean p1, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShapeTrimPath to TrimPathContent, layer = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance p1, Lcom/coloros/anim/animation/content/TrimPathContent;

    invoke-direct {p1, p2, p0}, Lcom/coloros/anim/animation/content/TrimPathContent;-><init>(Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapeTrimPath;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->start:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->end:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeTrimPath;->offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
