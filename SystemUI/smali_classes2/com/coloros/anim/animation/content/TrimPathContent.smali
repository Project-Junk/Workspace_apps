.class public Lcom/coloros/anim/animation/content/TrimPathContent;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Lcom/coloros/anim/animation/content/Content;
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final endAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final offsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final startAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapeTrimPath;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    .line 21
    invoke-virtual {p2}, Lcom/coloros/anim/model/content/ShapeTrimPath;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->name:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lcom/coloros/anim/model/content/ShapeTrimPath;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->hidden:Z

    .line 23
    invoke-virtual {p2}, Lcom/coloros/anim/model/content/ShapeTrimPath;->getType()Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->type:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    .line 24
    invoke-virtual {p2}, Lcom/coloros/anim/model/content/ShapeTrimPath;->getStart()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->startAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 25
    invoke-virtual {p2}, Lcom/coloros/anim/model/content/ShapeTrimPath;->getEnd()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->endAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    invoke-virtual {p2}, Lcom/coloros/anim/model/content/ShapeTrimPath;->getOffset()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->offsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    iget-object p2, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->startAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 29
    iget-object p2, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->endAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 30
    iget-object p2, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->offsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 32
    iget-object p1, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->startAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    iget-object p1, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->endAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 34
    iget-object p1, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->offsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method addListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEnd()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->endAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->offsetAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object p0
.end method

.method public getStart()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->startAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object p0
.end method

.method getType()Lcom/coloros/anim/model/content/ShapeTrimPath$Type;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->type:Lcom/coloros/anim/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->hidden:Z

    return p0
.end method

.method public onValueChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/coloros/anim/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method
