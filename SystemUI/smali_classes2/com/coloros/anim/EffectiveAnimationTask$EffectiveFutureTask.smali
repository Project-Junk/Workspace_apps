.class Lcom/coloros/anim/EffectiveAnimationTask$EffectiveFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "EffectiveAnimationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectiveFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/coloros/anim/EffectiveAnimationResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationTask;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/coloros/anim/EffectiveAnimationTask;

    .line 215
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationTask$EffectiveFutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/coloros/anim/EffectiveAnimationTask;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationTask$EffectiveFutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/EffectiveAnimationResult;

    invoke-static {v0, v1}, Lcom/coloros/anim/EffectiveAnimationTask;->access$100(Lcom/coloros/anim/EffectiveAnimationTask;Lcom/coloros/anim/EffectiveAnimationResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/coloros/anim/EffectiveAnimationTask;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v1}, Lcom/coloros/anim/EffectiveAnimationTask;->access$100(Lcom/coloros/anim/EffectiveAnimationTask;Lcom/coloros/anim/EffectiveAnimationResult;)V

    :goto_0
    return-void
.end method
