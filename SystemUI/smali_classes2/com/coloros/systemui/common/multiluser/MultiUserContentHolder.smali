.class Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;
.super Ljava/lang/Object;
.source "MultiUserContentHolder.java"


# instance fields
.field private final mNotifyForDescendants:Z

.field private final mUri:Landroid/net/Uri;

.field private mUserId:I

.field private mUserSet:Z

.field private final mWeakCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/database/ContentObserver;Landroid/net/Uri;Z)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mUserId:I

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mWeakCtx:Ljava/lang/ref/WeakReference;

    .line 36
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mWeakObserver:Ljava/lang/ref/WeakReference;

    .line 37
    iput-object p3, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mUri:Landroid/net/Uri;

    .line 38
    iput-boolean p4, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mNotifyForDescendants:Z

    return-void
.end method


# virtual methods
.method isTarget(Landroid/database/ContentObserver;)Z
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mWeakObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onUserSwitch()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mWeakObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 56
    iget-object v1, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mWeakObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 59
    iget-boolean v2, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mUserSet:Z

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mNotifyForDescendants:Z

    iget p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mUserId:I

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mUri:Landroid/net/Uri;

    iget-boolean p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mNotifyForDescendants:Z

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method setUserId(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mUserId:I

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->mUserSet:Z

    return-void
.end method
