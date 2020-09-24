.class public Lcom/coloros/systemui/airview/AirViewHelper;
.super Ljava/lang/Object;
.source "AirViewHelper.java"


# static fields
.field private static final AIR_VIEW_ACTION:Ljava/lang/String; = "coloros.intent.action.AIR_VIEW_SERVICE"

.field private static final AIR_VIEW_PKG:Ljava/lang/String; = "com.coloros.floatassistant"

.field private static final ONE_SECOND_FOR_MILLIS:J = 0x3e8L

.field private static final PUBG_PKG:Ljava/lang/String; = "com.tencent.tmgp.pubgmhd"

.field private static final SGAME_PKG:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field private static final TAG:Ljava/lang/String; = "AirViewHelper"

.field public static sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/coloros/systemui/airview/AirViewHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAirViewConnection:Landroid/content/ServiceConnection;

.field private final mAliveGameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mGameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIAirViewProxy:Lcom/coloros/airview/IAirViewProxy;

.field private mIProcessObserver:Landroid/app/IProcessObserver;

.field private mIntent:Landroid/content/Intent;

.field private mIsBind:Z

.field private mIsRegistered:Z

.field private mLastPackage:Ljava/lang/String;

.field private mLastTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/coloros/systemui/airview/AirViewHelper$1;

    invoke-direct {v0}, Lcom/coloros/systemui/airview/AirViewHelper$1;-><init>()V

    sput-object v0, Lcom/coloros/systemui/airview/AirViewHelper;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mGameSet:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mAliveGameSet:Ljava/util/Set;

    .line 54
    new-instance v0, Lcom/coloros/systemui/airview/AirViewHelper$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/airview/AirViewHelper$2;-><init>(Lcom/coloros/systemui/airview/AirViewHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mAirViewConnection:Landroid/content/ServiceConnection;

    .line 69
    new-instance v0, Lcom/coloros/systemui/airview/AirViewHelper$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/airview/AirViewHelper$3;-><init>(Lcom/coloros/systemui/airview/AirViewHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIProcessObserver:Landroid/app/IProcessObserver;

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mGameSet:Ljava/util/Set;

    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mGameSet:Ljava/util/Set;

    const-string v0, "com.tencent.tmgp.sgame"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/airview/AirViewHelper$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/coloros/systemui/airview/AirViewHelper;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/airview/AirViewHelper;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsBind:Z

    return p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/airview/AirViewHelper;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsBind:Z

    return p1
.end method

.method static synthetic access$202(Lcom/coloros/systemui/airview/AirViewHelper;Lcom/coloros/airview/IAirViewProxy;)Lcom/coloros/airview/IAirViewProxy;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIAirViewProxy:Lcom/coloros/airview/IAirViewProxy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/airview/AirViewHelper;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/airview/AirViewHelper;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mGameSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/airview/AirViewHelper;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mAliveGameSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/airview/AirViewHelper;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/coloros/systemui/airview/AirViewHelper;->bindService()V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/airview/AirViewHelper;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mLastPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/coloros/systemui/airview/AirViewHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mLastPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/coloros/systemui/airview/AirViewHelper;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/coloros/systemui/airview/AirViewHelper;->cancelAndUnbind(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/coloros/systemui/airview/AirViewHelper;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mLastTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/coloros/systemui/airview/AirViewHelper;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mLastTimeMillis:J

    return-wide p1
.end method

.method private bindService()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsBind:Z

    if-nez v0, :cond_0

    const-string v0, "AirView"

    const-string v1, "AirViewHelper"

    const-string v2, "bind airview service"

    .line 164
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mAirViewConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method private cancelAndUnbind(Ljava/lang/String;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mGameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIAirViewProxy:Lcom/coloros/airview/IAirViewProxy;

    const-string v1, "AirViewHelper"

    const-string v2, "AirView"

    if-eqz v0, :cond_1

    .line 115
    :try_start_0
    invoke-interface {v0, p1}, Lcom/coloros/airview/IAirViewProxy;->cancel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mAliveGameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "remove pkg from alive set"

    .line 121
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mAliveGameSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/airview/AirViewHelper;->unBindService()V

    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 157
    iput-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mContext:Landroid/content/Context;

    .line 158
    new-instance p1, Landroid/content/Intent;

    const-string v0, "coloros.intent.action.AIR_VIEW_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIntent:Landroid/content/Intent;

    .line 159
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIntent:Landroid/content/Intent;

    const-string p1, "com.coloros.floatassistant"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private unBindService()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsBind:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsBind:Z

    const-string v0, "AirView"

    const-string v1, "AirViewHelper"

    const-string v2, "unbind airview service"

    .line 172
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mAirViewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .locals 3

    .line 129
    iget-boolean v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsRegistered:Z

    const-string v0, "AirViewHelper"

    const-string v1, "AirView"

    const-string v2, "register process observer"

    .line 133
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/coloros/systemui/airview/AirViewHelper;->init(Landroid/content/Context;)V

    .line 136
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerProcessObserver exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 4

    .line 143
    iget-boolean v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIsRegistered:Z

    const-string v0, "AirViewHelper"

    const-string v1, "AirView"

    const-string v2, "unregister process observer"

    .line 147
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/coloros/systemui/airview/AirViewHelper;->unBindService()V

    .line 150
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper;->mIProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterProcessObserver exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
