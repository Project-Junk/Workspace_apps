.class public abstract Lcom/oppo/music/manager/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field protected mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancleRequest()V
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/oppo/music/manager/Request;->mFuture:Ljava/util/concurrent/Future;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 40
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public abstract execute()V
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/oppo/music/manager/Request;->mFuture:Ljava/util/concurrent/Future;

    return-void
.end method
