.class final Lcom/coloros/anim/EffectiveCompositionFactory$4;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
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
.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/coloros/anim/EffectiveCompositionFactory$4;->val$stream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/coloros/anim/EffectiveCompositionFactory$4;->val$cacheKey:Ljava/lang/String;

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

    .line 186
    iget-object v0, p0, Lcom/coloros/anim/EffectiveCompositionFactory$4;->val$stream:Ljava/io/InputStream;

    iget-object p0, p0, Lcom/coloros/anim/EffectiveCompositionFactory$4;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveCompositionFactory$4;->call()Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
