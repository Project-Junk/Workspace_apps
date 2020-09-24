.class public Lcom/coloros/systemui/edgepanel/EdgePanelHelper;
.super Ljava/lang/Object;
.source "EdgePanelHelper.java"

# interfaces
.implements Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final ACTION_EDGE_PANEL_SERVICE:Ljava/lang/String; = "oppo.intent.action.EDGE_PANEL_SERVICE"

.field private static final CLASS_EDGE_PANEL_SERVICE:Ljava/lang/String; = "com.coloros.edgepanel.service.EdgePanelService"

.field private static final DELAY_DEFERRED:I = 0x7d0

.field private static final DELAY_SWITCH_ON:I = 0x3e8

.field private static final MAX_REBIND_COUNT:I = 0x1e

.field private static final PACKAGE_EDGE_PANEL_SERVICE:Ljava/lang/String; = "com.coloros.floatassistant"

.field private static final TAG:Ljava/lang/String; = "EdgePanelHelper"


# instance fields
.field private final mBindService:Ljava/lang/Runnable;

.field private final mCn:Landroid/content/ComponentName;

.field private mConnectionBackoffAttempts:I

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mEdgePanelCallBackProxy:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

.field private final mEdgePanelConnection:Landroid/content/ServiceConnection;

.field private final mEdgePanelDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mRebindCount:I

.field private final mThread:Landroid/os/HandlerThread;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/coloros/systemui/edgepanel/-$$Lambda$EdgePanelHelper$H3dtntYcPe24a8VNlWgOI4T3950;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/edgepanel/-$$Lambda$EdgePanelHelper$H3dtntYcPe24a8VNlWgOI4T3950;-><init>(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mBindService:Ljava/lang/Runnable;

    .line 60
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 61
    new-instance v0, Lcom/coloros/systemui/edgepanel/-$$Lambda$EdgePanelHelper$KRjGZIR2DY8KN_lJabsqu2FG8bE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/edgepanel/-$$Lambda$EdgePanelHelper$KRjGZIR2DY8KN_lJabsqu2FG8bE;-><init>(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 62
    new-instance v0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;-><init>(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelConnection:Landroid/content/ServiceConnection;

    .line 92
    new-instance v0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$2;-><init>(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 103
    new-instance v0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$3;-><init>(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 123
    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mContext:Landroid/content/Context;

    .line 124
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oppo.intent.action.EDGE_PANEL_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mIntent:Landroid/content/Intent;

    .line 125
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.coloros.floatassistant"

    const-string v1, "com.coloros.edgepanel.service.EdgePanelService"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mCn:Landroid/content/ComponentName;

    .line 126
    iget-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mCn:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "EdgePanelHelper"

    const-string v0, "EdgePanel"

    const-string v1, "Check if FloatAssist need to enabled"

    .line 127
    invoke-static {v0, p1, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->enableFloatAssistApp()V

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mThread:Landroid/os/HandlerThread;

    .line 130
    iget-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;)Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelCallBackProxy:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->rebindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mBindService:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mConnectionBackoffAttempts:I

    return p1
.end method

.method static synthetic access$700(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->bindService()V

    return-void
.end method

.method private bindService()V
    .locals 8

    const-string v0, "EdgePanel"

    const-string v1, "EdgePanelHelper"

    const-string v2, "bindService"

    .line 201
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->unbindService()V

    .line 205
    iget-object v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot attempt to connection, is setup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mBindService:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 213
    :try_start_0
    iget-object v4, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 214
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 215
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindService() userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; userHandle = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6, v7, v3, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 219
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService() bound = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "bindService() Unable to bind because of security error"

    .line 221
    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v2, :cond_2

    .line 224
    iget v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mConnectionBackoffAttempts:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mConnectionBackoffAttempts:I

    .line 225
    iget v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mConnectionBackoffAttempts:I

    mul-int/lit16 v2, v2, 0x7d0

    .line 226
    iget-object v3, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mBindService:Ljava/lang/Runnable;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect on attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mConnectionBackoffAttempts:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private enableFloatAssistApp()V
    .locals 6

    const-string v0, "com.coloros.floatassistant"

    const-string v1, "EdgePanel"

    const-string v2, "EdgePanelHelper"

    const-string v3, "Start Check FloatAssist"

    .line 186
    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 190
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "Enable FloatAssist"

    .line 192
    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v0, v5, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable floatAssist error : e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic lambda$H3dtntYcPe24a8VNlWgOI4T3950(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->bindService()V

    return-void
.end method

.method public static synthetic lambda$KRjGZIR2DY8KN_lJabsqu2FG8bE(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->rebindService()V

    return-void
.end method

.method private rebindService()V
    .locals 4

    .line 251
    iget v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mRebindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mRebindCount:I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebindService: mRebindCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mRebindCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgePanelHelper"

    const-string v2, "EdgePanel"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mRebindCount:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_0

    const-string p0, "rebindService: mRebindCount beyond upper limit 30"

    .line 254
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mBindService:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rebindService: post connection runnable after 2000ms"

    .line 258
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mBindService:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private unbindService()V
    .locals 4

    const-string v0, "EdgePanelHelper"

    const-string v1, "EdgePanel"

    const-string v2, "unbindService"

    .line 232
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelCallBackProxy:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    if-eqz v1, :cond_1

    .line 235
    :try_start_0
    invoke-interface {v1}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 241
    :try_start_1
    iget-object v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "Service is killed or unbind."

    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelCallBackProxy:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "EdgePanelHelper state:"

    .line 265
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mConnectionBackoffAttempts="

    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mConnectionBackoffAttempts:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  isCurrentUserSetup="

    .line 268
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  isConnected="

    .line 270
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelCallBackProxy:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mEdgePanelIntent="

    .line 272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDockedStackExistsChanged: exists = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgePanel"

    const-string v2, "EdgePanelHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelCallBackProxy:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    if-eqz p0, :cond_0

    .line 166
    :try_start_0
    invoke-interface {p0, p1}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;->onDockedStackExistsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onMinimize(Z)V
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMinimize: anim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgePanel"

    const-string v2, "EdgePanelHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mEdgePanelCallBackProxy:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-interface {p0, p1}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;->onMinimize(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public switchOff()V
    .locals 3

    const-string v0, "EdgePanel"

    const-string v1, "EdgePanelHelper"

    const-string v2, "switchOff()"

    .line 150
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->unbindService()V

    .line 153
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->removeCallback(Ljava/lang/Object;)V

    .line 158
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public switchOn()V
    .locals 3

    const-string v0, "EdgePanelHelper"

    const-string v1, "EdgePanel"

    const-string v2, "switchOn()"

    .line 136
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mRebindCount:I

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->mBindService:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
