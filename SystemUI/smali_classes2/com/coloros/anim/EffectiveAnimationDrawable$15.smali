.class Lcom/coloros/anim/EffectiveAnimationDrawable$15;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field final synthetic val$callback:Lcom/coloros/anim/value/EffectiveValueCallback;

.field final synthetic val$keyPath:Lcom/coloros/anim/model/KeyPath;

.field final synthetic val$property:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$15;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$15;->val$keyPath:Lcom/coloros/anim/model/KeyPath;

    iput-object p3, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$15;->val$property:Ljava/lang/Object;

    iput-object p4, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$15;->val$callback:Lcom/coloros/anim/value/EffectiveValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 2

    .line 855
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$15;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$15;->val$keyPath:Lcom/coloros/anim/model/KeyPath;

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$15;->val$property:Ljava/lang/Object;

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$15;->val$callback:Lcom/coloros/anim/value/EffectiveValueCallback;

    invoke-virtual {p1, v0, v1, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    return-void
.end method
