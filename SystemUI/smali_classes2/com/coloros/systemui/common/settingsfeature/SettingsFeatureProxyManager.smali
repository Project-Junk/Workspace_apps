.class public Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;
.super Ljava/lang/Object;
.source "SettingsFeatureProxyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SettingsFeatureProxyManager"

.field private static volatile sInstance:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;


# instance fields
.field private final mProxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->mProxies:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsFeatureProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsFeatureProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;)V

    return-void
.end method

.method private addProxy(Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->mProxies:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;
    .locals 2

    .line 48
    sget-object v0, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->sInstance:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->sInstance:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    invoke-direct {v1}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->sInstance:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->sInstance:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    return-object v0
.end method

.method static synthetic lambda$null$0(Landroid/content/Context;Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;)V
    .locals 3

    const-string v0, "SettingsFeatureProxyManager"

    const-string v1, "Common"

    .line 70
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getShownState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->buildMessageEntry(Landroid/content/Context;)Lcom/android/settingslib/messageentry/MessageEntry;

    move-result-object p1

    .line 73
    invoke-static {p0, p1}, Lcom/android/settingslib/messageentry/MessageEntryAgent;->sendMessage(Landroid/content/Context;Lcom/android/settingslib/messageentry/MessageEntry;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsgs() Illegal entry: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsgs() e = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$null$2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;)Z
    .locals 5

    const-string v0, "SettingsFeatureProxyManager"

    const-string v1, "Common"

    .line 95
    invoke-virtual {p3}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3, p1}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/android/settingslib/messageentry/MessageEntryAgent;->deleteMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ", pkgName = "

    if-lez v2, :cond_0

    .line 98
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMsg() msgId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 99
    invoke-virtual {p3, p1, p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->updateShownState(Landroid/content/Context;Z)V

    return p0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleteMsg() Illegal value: msgId = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteMsg() e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public deleteMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;-><init>(Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$deleteMsg$3$SettingsFeatureProxyManager(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->mProxies:Ljava/util/List;

    new-instance v0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;

    invoke-direct {v0, p1, p2, p3}, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public synthetic lambda$sendMsgs$1$SettingsFeatureProxyManager(Landroid/content/Context;)V
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->mProxies:Ljava/util/List;

    new-instance v0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$nTWR3jUG1ESRXToyDm-dFOiISyQ;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$nTWR3jUG1ESRXToyDm-dFOiISyQ;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public sendMsgs(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$A7UobwK60WmglMLcd1YxAp1VcgU;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$A7UobwK60WmglMLcd1YxAp1VcgU;-><init>(Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInThread(Ljava/lang/Runnable;)V

    return-void
.end method
