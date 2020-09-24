.class public Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "SwipeUpGestureFollowRotationObserver.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;


# instance fields
.field private mSwipeUpGestureFollowRotationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mSwipeUpGestureFollowRotationType:I

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;
    .locals 2

    .line 33
    sget-object v0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->sInstance:Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->sInstance:Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    invoke-direct {v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->sInstance:Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->sInstance:Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    return-object v0
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "follow_rotation_gesture_bar_enable"

    return-object p0
.end method

.method public getSwipeUpGestureFollowRotationType()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mSwipeUpGestureFollowRotationType:I

    return p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isGestureUpRangePinningMode()Z
    .locals 0

    .line 73
    iget p0, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mSwipeUpGestureFollowRotationType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onChange(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mSwipeUpGestureFollowRotationType:I

    .line 65
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onRegister(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onRegister(Landroid/content/Context;)V

    .line 56
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->mSwipeUpGestureFollowRotationType:I

    return-void
.end method
