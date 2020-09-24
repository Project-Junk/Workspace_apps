.class public Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedMonitorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;,
        Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_NETWORTSPEED:I = 0x0

.field private static final NETWORK_SPEED_DELAY:J = 0xbb8L

.field private static final REFRESH_INTERVAL_SECONDS:I = 0x4

.field public static final SHOW_NETWORK_SPEED:Ljava/lang/String; = "show_network_speed"

.field private static final TAG:Ljava/lang/String; = "NetworkSpeedMonitorCtrl"

.field private static final TIME_UNIT:J = 0x3e8L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstLoad:Z

.field private mIsSwitchOpening:Z

.field private final mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

.field private mNetworkSpeedChangedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkSpeedObserver:Landroid/database/ContentObserver;

.field private mSpeed:J

.field private mTimer:Ljava/util/Timer;

.field private mUtils:Lcom/color/util/ColorUnitConversionUtils;

.field private myTimerTask:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsFirstLoad:Z

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsSwitchOpening:Z

    .line 97
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$1;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$1;-><init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$2;-><init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    .line 231
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$3;-><init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mContext:Landroid/content/Context;

    .line 79
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 80
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    .line 82
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 83
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mTimer:Ljava/util/Timer;

    .line 88
    new-instance p1, Lcom/color/util/ColorUnitConversionUtils;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/color/util/ColorUnitConversionUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mUtils:Lcom/color/util/ColorUnitConversionUtils;

    .line 92
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mNetworkSpeedChangedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->addListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mSpeed:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;J)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->notifyChanged(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->isSwitchOpening()V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsFirstLoad:Z

    return p0
.end method

.method static synthetic access$502(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->myTimerTask:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Ljava/util/Timer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getNetworkSpeedStr(J)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mUtils:Lcom/color/util/ColorUnitConversionUtils;

    invoke-virtual {p0, p1, p2}, Lcom/color/util/ColorUnitConversionUtils;->getSpeedValue(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNetworkConnected()Z
    .locals 3

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 133
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    .line 137
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    .line 140
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNetworkConnected = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v2, "NetworkSpeedMonitorCtrl"

    invoke-static {v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isSwitchOpening()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "show_network_speed"

    .line 151
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsSwitchOpening:Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSwitchOpened = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsSwitchOpening:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "NetworkSpeedMonitorCtrl"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyChanged(J)V
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->shouldShowNetworkSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 224
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mNetworkSpeedChangedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 225
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;

    .line 226
    invoke-interface {v1, p1, p2, v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;->onChanged(JI)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public initNetworkSpeed()V
    .locals 5

    .line 214
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->isSwitchOpening()V

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mNetworkSpeedChangedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;

    const-wide/16 v2, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->shouldShowNetworkSpeed()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    :goto_1
    invoke-interface {v1, v2, v3, v4}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;->onChanged(JI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIME_SET"

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 162
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive action : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Statusbar"

    const-string v0, "NetworkSpeedMonitorCtrl"

    invoke-static {p2, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->refreshSpeedStatus()V

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsFirstLoad:Z

    :cond_1
    return-void
.end method

.method public refreshSpeedStatus()V
    .locals 11

    .line 169
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->shouldShowNetworkSpeed()Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "NetworkSpeedMonitorCtrl"

    const-string v4, "Statusbar"

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0, v1, v2}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->notifyChanged(J)V

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->myTimerTask:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    if-eqz v0, :cond_0

    const-string v0, "before schedule_myTimerTask.cancel()"

    .line 172
    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->myTimerTask:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->cancel()Z

    .line 174
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 176
    :cond_0
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;-><init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->myTimerTask:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    .line 177
    iget-object v5, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mTimer:Ljava/util/Timer;

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->myTimerTask:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    const-wide/16 v7, 0xbb8

    const-wide/16 v9, 0xfa0

    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const-string v0, "mTimer.schedule()"

    .line 178
    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->notifyChanged(J)V

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsFirstLoad:Z

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->myTimerTask:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    if-eqz v0, :cond_2

    const-string v0, "refreshSpeedView_myTimerTask.cancel()"

    .line 183
    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->myTimerTask:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->cancel()Z

    .line 185
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 188
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->shouldShowNetworkSpeed()Z

    move-result p0

    const-string v1, "0"

    if-eqz p0, :cond_3

    const-string p0, "1"

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    const-string v2, "NetSpeed"

    invoke-static {v0, v2, v1, p0}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarIconStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerNetworkSpeedChanged(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mNetworkSpeedChangedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNetworkSpeedObserver(Landroid/content/Context;)V
    .locals 3

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "show_network_speed"

    .line 194
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 193
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public shouldShowNetworkSpeed()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mIsSwitchOpening:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->isNetworkConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unRegisterNetworkSpeedChanged(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mNetworkSpeedChangedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unRegisterNetworkSpeedObserver(Landroid/content/Context;)V
    .locals 0

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
