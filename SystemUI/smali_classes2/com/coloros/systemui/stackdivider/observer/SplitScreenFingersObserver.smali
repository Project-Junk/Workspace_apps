.class public Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "SplitScreenFingersObserver.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;


# instance fields
.field private mIsSplitScreenFingersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;
    .locals 2

    .line 32
    sget-object v0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->sInstance:Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->sInstance:Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    invoke-direct {v1}, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->sInstance:Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->sInstance:Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    return-object v0
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "double_finger_split_screen_enable"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isSplitScreenFingersEnabled()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->mIsSplitScreenFingersEnabled:Z

    return p0
.end method

.method protected onChange(Z)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenFingersEnable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->mIsSplitScreenFingersEnabled:Z

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    return-void
.end method

.method protected onRegister(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onRegister(Landroid/content/Context;)V

    .line 55
    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenFingersEnable(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->mIsSplitScreenFingersEnabled:Z

    return-void
.end method
