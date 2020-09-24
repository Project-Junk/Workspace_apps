.class public Lcom/coloros/systemui/common/observer/ChildrenModeObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "ChildrenModeObserver.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/common/observer/ChildrenModeObserver;


# instance fields
.field private mIsChildrenMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;
    .locals 2

    .line 35
    sget-object v0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->sInstance:Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->sInstance:Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->sInstance:Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->sInstance:Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    return-object v0
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "children_mode_on"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isChildrenMode()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->mIsChildrenMode:Z

    return p0
.end method

.method public onChange(Z)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 59
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isChildrenModeSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getChildrenModeState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->mIsChildrenMode:Z

    goto :goto_1

    .line 62
    :cond_2
    iput-boolean v2, p0, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->mIsChildrenMode:Z

    .line 64
    :goto_1
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    :cond_3
    :goto_2
    return-void
.end method
