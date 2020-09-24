.class public abstract Lcom/coloros/systemui/common/observer/AbstractObserver;
.super Ljava/lang/Object;
.source "AbstractObserver.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mHasRegister:Z

.field protected mKey:Ljava/lang/String;

.field protected final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/observer/IObserverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field protected mUri:Landroid/net/Uri;

.field protected mWeakCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$onChange$0(ZLcom/coloros/systemui/common/observer/IObserverListener;)V
    .locals 0

    .line 133
    invoke-interface {p1, p0}, Lcom/coloros/systemui/common/observer/IObserverListener;->onChange(Z)V

    return-void
.end method

.method private register(Landroid/content/Context;IZZ)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Common"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-boolean v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mHasRegister:Z

    if-nez v0, :cond_4

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mKey:Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mUri:Landroid/net/Uri;

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    .line 85
    new-instance v1, Lcom/coloros/systemui/common/observer/AbstractObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/common/observer/AbstractObserver$1;-><init>(Lcom/coloros/systemui/common/observer/AbstractObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    :cond_2
    if-eqz p3, :cond_3

    .line 95
    iget-object p3, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-static {p1, p3, p4, v0, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object p3, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-static {p1, p3, p4, v0, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_0
    const/4 p2, 0x1

    .line 99
    iput-boolean p2, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mHasRegister:Z

    .line 100
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onRegister(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public static varargs unregister(Landroid/content/Context;[Lcom/coloros/systemui/common/observer/AbstractObserver;)V
    .locals 3

    .line 137
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v2, p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;->unregister(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/observer/IObserverListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getKey()Ljava/lang/String;
.end method

.method protected abstract getUri(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method protected onChange(Z)V
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/coloros/systemui/common/observer/-$$Lambda$AbstractObserver$zi_N1qAoqYC5tej-84uQ_6oLrGY;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/common/observer/-$$Lambda$AbstractObserver$zi_N1qAoqYC5tej-84uQ_6oLrGY;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onRegister(Landroid/content/Context;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->TAG:Ljava/lang/String;

    const-string p1, "onRegister()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coloros/systemui/common/observer/AbstractObserver;->register(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public register(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/coloros/systemui/common/observer/AbstractObserver;->register(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public registerForUserSwitch(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coloros/systemui/common/observer/AbstractObserver;->register(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public registerForUserSwitch(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/coloros/systemui/common/observer/AbstractObserver;->register(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public registerWithOnChange(Landroid/content/Context;IZ)V
    .locals 1

    .line 60
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->unregister(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/common/observer/AbstractObserver;->register(Landroid/content/Context;IZ)V

    return-void
.end method

.method public registerWithOnChange(Landroid/content/Context;Z)V
    .locals 1

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->unregister(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/common/observer/AbstractObserver;->register(Landroid/content/Context;Z)V

    return-void
.end method

.method public removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/observer/IObserverListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->TAG:Ljava/lang/String;

    const-string v1, "Common"

    const-string v2, "unregister()"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-boolean v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mHasRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/coloros/systemui/common/observer/AbstractObserver;->mHasRegister:Z

    :cond_0
    return-void
.end method
