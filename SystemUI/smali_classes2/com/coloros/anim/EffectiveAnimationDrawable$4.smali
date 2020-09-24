.class Lcom/coloros/anim/EffectiveAnimationDrawable$4;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field final synthetic val$minFrame:I


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;I)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$4;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$4;->val$minFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$4;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iget p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$4;->val$minFrame:I

    invoke-virtual {p1, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    return-void
.end method
