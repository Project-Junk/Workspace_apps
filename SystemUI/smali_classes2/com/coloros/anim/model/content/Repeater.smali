.class public Lcom/coloros/anim/model/content/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# instance fields
.field private final copies:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final transform:Lcom/coloros/anim/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableTransform;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/coloros/anim/model/content/Repeater;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/coloros/anim/model/content/Repeater;->copies:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 24
    iput-object p3, p0, Lcom/coloros/anim/model/content/Repeater;->offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 25
    iput-object p4, p0, Lcom/coloros/anim/model/content/Repeater;->transform:Lcom/coloros/anim/model/animatable/AnimatableTransform;

    .line 26
    iput-boolean p5, p0, Lcom/coloros/anim/model/content/Repeater;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCopies()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/anim/model/content/Repeater;->copies:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/anim/model/content/Repeater;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/anim/model/content/Repeater;->offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getTransform()Lcom/coloros/anim/model/animatable/AnimatableTransform;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/anim/model/content/Repeater;->transform:Lcom/coloros/anim/model/animatable/AnimatableTransform;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/Repeater;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 52
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repeater to RepeaterContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/content/RepeaterContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/animation/content/RepeaterContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/Repeater;)V

    return-object v0
.end method
