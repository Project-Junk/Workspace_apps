.class Lcom/coloros/anim/EffectiveAnimationDrawable$13;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationDrawable;->setFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field final synthetic val$frame:I


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;I)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$13;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$13;->val$frame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 0

    .line 642
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$13;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iget p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$13;->val$frame:I

    invoke-virtual {p1, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setFrame(I)V

    return-void
.end method
