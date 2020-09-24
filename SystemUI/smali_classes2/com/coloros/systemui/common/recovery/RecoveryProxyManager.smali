.class final Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;
.super Ljava/lang/Object;
.source "RecoveryProxyManager.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;


# instance fields
.field private final mProxies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->mProxies:Ljava/util/Set;

    .line 36
    new-instance v0, Lcom/coloros/systemui/navbar/proxy/NavBarRecoveryProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/navbar/proxy/NavBarRecoveryProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->addProxy(Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;)V

    .line 37
    new-instance v0, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeRecoveryProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeRecoveryProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->addProxy(Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;)V

    .line 38
    new-instance v0, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsRecoveryProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsRecoveryProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->addProxy(Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;)V

    return-void
.end method

.method private addProxy(Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->mProxies:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getInstance()Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;
    .locals 2

    .line 42
    sget-object v0, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->sInstance:Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->sInstance:Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;

    invoke-direct {v1}, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->sInstance:Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->sInstance:Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;

    return-object v0
.end method

.method static synthetic lambda$handleRecovery$0(Landroid/content/Context;Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;)V
    .locals 0

    .line 57
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;->doRecoveryOperation(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method handleRecovery(Landroid/content/Context;)Z
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->mProxies:Ljava/util/Set;

    new-instance v0, Lcom/coloros/systemui/common/recovery/-$$Lambda$RecoveryProxyManager$FFSLIY8kJih27cvBnO5rotpSv9k;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/common/recovery/-$$Lambda$RecoveryProxyManager$FFSLIY8kJih27cvBnO5rotpSv9k;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method
