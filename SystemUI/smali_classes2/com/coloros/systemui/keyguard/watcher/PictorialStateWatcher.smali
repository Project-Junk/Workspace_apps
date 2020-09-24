.class public Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;
.super Ljava/lang/Object;
.source "PictorialStateWatcher.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;,
        Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Inner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;",
        ">;"
    }
.end annotation


# instance fields
.field private mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;
    .locals 1

    .line 29
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Inner;->access$100()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V

    return-void
.end method

.method public dispatchBackToKeyguard()V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    .line 62
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;->onBackToKeyguard()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchPictorialAutoSwitchChange(Z)V
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    .line 50
    invoke-interface {v0, p1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;->onPictorialAutoSwitchChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchPictorialMainSwitchChange(Z)V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    .line 56
    invoke-interface {v0, p1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;->onPictorialMainSwitchChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchPictorialPreloadViewLoad(Z)V
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    .line 74
    invoke-interface {v0, p1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;->onPictorialPreloadViewLoad(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchUnLockKeyguard()V
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    .line 68
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;->onUnLockKeyguard()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->removeCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V

    return-void
.end method
