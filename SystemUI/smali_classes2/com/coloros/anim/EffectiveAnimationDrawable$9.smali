.class Lcom/coloros/anim/EffectiveAnimationDrawable$9;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationDrawable;->setMaxProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field final synthetic val$maxProgress:F


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;F)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$9;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$9;->val$maxProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 0

    .line 505
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$9;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iget p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$9;->val$maxProgress:F

    invoke-virtual {p1, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMaxProgress(F)V

    return-void
.end method
