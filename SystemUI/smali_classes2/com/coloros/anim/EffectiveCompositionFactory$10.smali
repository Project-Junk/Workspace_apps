.class final Lcom/coloros/anim/EffectiveCompositionFactory$10;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationListener;


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
        "Lcom/coloros/anim/EffectiveAnimationListener<",
        "Lcom/coloros/anim/EffectiveAnimationComposition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/coloros/anim/EffectiveCompositionFactory$10;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/coloros/anim/EffectiveCompositionFactory$10;->val$cacheKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/coloros/anim/model/EffectiveCompositionCache;->getInstance()Lcom/coloros/anim/model/EffectiveCompositionCache;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveCompositionFactory$10;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/anim/model/EffectiveCompositionCache;->put(Ljava/lang/String;Lcom/coloros/anim/EffectiveAnimationComposition;)V

    .line 428
    :cond_0
    invoke-static {}, Lcom/coloros/anim/EffectiveCompositionFactory;->access$000()Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/anim/EffectiveCompositionFactory$10;->val$cacheKey:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 422
    check-cast p1, Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$10;->onResult(Lcom/coloros/anim/EffectiveAnimationComposition;)V

    return-void
.end method
