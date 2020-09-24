.class public Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;
.super Ljava/lang/Object;
.source "ColorKeyguardWatcher.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;,
        Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Inner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;",
        ">;"
    }
.end annotation


# instance fields
.field private mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;
    .locals 1

    .line 35
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Inner;->access$100()Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;)V

    return-void
.end method

.method public dispatchColorKeyguardLoad(Z)V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;

    .line 56
    invoke-interface {v0, p1}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;->onColorKeyguardLoad(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchSetBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;

    .line 62
    invoke-interface {v0, p1}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;->onSetBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->removeCallback(Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;)V

    return-void
.end method
