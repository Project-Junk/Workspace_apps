.class Lcom/coloros/anim/EffectiveAnimationDrawable$12;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field final synthetic val$maxProgress:F

.field final synthetic val$minProgress:F


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;FF)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$12;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$12;->val$minProgress:F

    iput p3, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$12;->val$maxProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 1

    .line 566
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$12;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$12;->val$minProgress:F

    iget p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$12;->val$maxProgress:F

    invoke-virtual {p1, v0, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method
