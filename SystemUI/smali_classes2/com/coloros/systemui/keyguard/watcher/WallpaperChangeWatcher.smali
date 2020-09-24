.class public Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;
.super Ljava/lang/Object;
.source "WallpaperChangeWatcher.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;,
        Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Inner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;",
        ">;"
    }
.end annotation


# instance fields
.field private mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;
    .locals 1

    .line 31
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Inner;->access$100()Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;)V

    return-void
.end method

.method public dispatchWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)V
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;

    .line 52
    invoke-interface {v0, p1}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;->onWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWallpaperColorChange(Landroid/app/WallpaperColors;II)V
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;

    .line 58
    invoke-interface {v0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;->onWallpaperColorChange(Landroid/app/WallpaperColors;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->mObserver:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->removeCallback(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;)V

    return-void
.end method
