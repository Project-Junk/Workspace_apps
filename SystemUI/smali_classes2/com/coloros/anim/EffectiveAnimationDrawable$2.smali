.class Lcom/coloros/anim/EffectiveAnimationDrawable$2;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationDrawable;->playAnimation()V
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

    .line 356
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$2;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$2;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->playAnimation()V

    return-void
.end method
