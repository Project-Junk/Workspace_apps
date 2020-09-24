.class final Lcom/coloros/anim/EffectiveCompositionFactory$11;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/coloros/anim/EffectiveCompositionFactory$11;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 431
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$11;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .locals 0

    .line 434
    invoke-static {}, Lcom/coloros/anim/EffectiveCompositionFactory;->access$000()Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/anim/EffectiveCompositionFactory$11;->val$cacheKey:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
