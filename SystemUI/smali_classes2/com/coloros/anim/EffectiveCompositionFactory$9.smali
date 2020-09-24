.class final Lcom/coloros/anim/EffectiveCompositionFactory$9;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/coloros/anim/EffectiveAnimationResult<",
        "Lcom/coloros/anim/EffectiveAnimationComposition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cachedComposition:Lcom/coloros/anim/EffectiveAnimationComposition;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/coloros/anim/EffectiveCompositionFactory$9;->val$cachedComposition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Lcom/coloros/anim/EffectiveAnimationResult;

    iget-object p0, p0, Lcom/coloros/anim/EffectiveCompositionFactory$9;->val$cachedComposition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-direct {v0, p0}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveCompositionFactory$9;->call()Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
