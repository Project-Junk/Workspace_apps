.class public Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;
.super Ljava/lang/Object;
.source "SettingsValueProxyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsValueProxyManager"

.field private static volatile sInstance:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;


# instance fields
.field private final LISTENER:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

.field private final mProxies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
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

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->mProxies:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager$1;-><init>(Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->LISTENER:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    .line 67
    new-instance v0, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 68
    new-instance v0, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 69
    new-instance v0, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 70
    new-instance v0, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 71
    new-instance v0, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 72
    new-instance v0, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 73
    new-instance v0, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 74
    new-instance v0, Lcom/coloros/systemui/common/settingsvalue/LockDeadSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/common/settingsvalue/LockDeadSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 75
    new-instance v0, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 76
    new-instance v0, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 77
    new-instance v0, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 78
    new-instance v0, Lcom/coloros/systemui/edgepanel/EdgePanelSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/edgepanel/EdgePanelSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 79
    new-instance v0, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    .line 80
    new-instance v0, Lcom/coloros/systemui/notification/proxy/NotificationSettingsValueProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/proxy/NotificationSettingsValueProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->mWeakCtx:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addProxy(Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->mProxies:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;
    .locals 2

    .line 84
    sget-object v0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->sInstance:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    if-nez v0, :cond_1

    .line 85
    const-class v0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->sInstance:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    invoke-direct {v1}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->sInstance:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->sInstance:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    return-object v0
.end method

.method static synthetic lambda$checkValidity$0(Landroid/content/Context;Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;)V
    .locals 0

    .line 105
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;->checkValidity(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkValidity(Landroid/content/Context;)V
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkValidity mProxies.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->mProxies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUi--"

    const-string v2, "NavBar"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->mProxies:Ljava/util/Set;

    new-instance v0, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SettingsValueProxyManager$y6agSHGa8LLJYmfJs9eVLg27Pgg;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SettingsValueProxyManager$y6agSHGa8LLJYmfJs9eVLg27Pgg;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerMultiUserListener(Landroid/content/Context;)V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->mWeakCtx:Ljava/lang/ref/WeakReference;

    .line 110
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->LISTENER:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->addListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    return-void
.end method
