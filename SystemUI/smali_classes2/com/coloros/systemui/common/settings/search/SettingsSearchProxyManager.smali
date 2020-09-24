.class final Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;
.super Ljava/lang/Object;
.source "SettingsSearchProxyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsSearchProxyManager"

.field private static volatile sInstance:Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;


# instance fields
.field private final mProxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->mProxies:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchMoreProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchMoreProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->addProxy(Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;)V

    .line 45
    new-instance v0, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->addProxy(Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;)V

    .line 46
    new-instance v0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsSearchProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsSearchProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->addProxy(Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;)V

    .line 47
    new-instance v0, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingSearchProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingSearchProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->addProxy(Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;)V

    .line 50
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSearchProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSearchProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->addProxy(Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;)V

    return-void
.end method

.method private addProxy(Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->mProxies:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getInstance()Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;
    .locals 2

    .line 55
    sget-object v0, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->sInstance:Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->sInstance:Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    invoke-direct {v1}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->sInstance:Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->sInstance:Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    return-object v0
.end method


# virtual methods
.method getDataSize()I
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->mProxies:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method getProxies()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->mProxies:Ljava/util/List;

    return-object p0
.end method

.method getProxy(I)Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->mProxies:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;

    return-object p0
.end method
