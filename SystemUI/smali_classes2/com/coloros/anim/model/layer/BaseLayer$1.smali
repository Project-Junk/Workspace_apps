.class Lcom/coloros/anim/model/layer/BaseLayer$1;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/model/layer/BaseLayer;->setupInOutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/model/layer/BaseLayer;

.field final synthetic val$inOutAnimation:Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;


# direct methods
.method constructor <init>(Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer$1;->this$0:Lcom/coloros/anim/model/layer/BaseLayer;

    iput-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer$1;->val$inOutAnimation:Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer$1;->this$0:Lcom/coloros/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer$1;->val$inOutAnimation:Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/coloros/anim/model/layer/BaseLayer;->setVisible(Z)V

    return-void
.end method
