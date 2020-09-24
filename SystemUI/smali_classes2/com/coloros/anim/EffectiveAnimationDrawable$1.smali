.class Lcom/coloros/anim/EffectiveAnimationDrawable$1;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationDrawable;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-static {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->access$000(Lcom/coloros/anim/EffectiveAnimationDrawable;)Lcom/coloros/anim/model/layer/CompositionLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-static {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->access$000(Lcom/coloros/anim/EffectiveAnimationDrawable;)Lcom/coloros/anim/model/layer/CompositionLayer;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-static {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->access$100(Lcom/coloros/anim/EffectiveAnimationDrawable;)Lcom/coloros/anim/utils/EffectiveValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coloros/anim/model/layer/CompositionLayer;->setProgress(F)V

    :cond_0
    return-void
.end method
