.class final Lcom/coloros/anim/EffectiveCompositionFactory$1;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/coloros/anim/EffectiveCompositionFactory$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/anim/EffectiveCompositionFactory$1;->val$url:Ljava/lang/String;

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

    .line 72
    iget-object v0, p0, Lcom/coloros/anim/EffectiveCompositionFactory$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/anim/EffectiveCompositionFactory$1;->val$url:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/anim/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

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

    .line 69
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveCompositionFactory$1;->call()Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
