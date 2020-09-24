.class public Lcom/coloros/systemui/smartlock/SmartlockMediator;
.super Ljava/lang/Object;
.source "SmartlockMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;
    }
.end annotation


# static fields
.field public static final CMD_GRANT_TRUST:Ljava/lang/String; = "grant_trust"

.field public static final CMD_REVOKE_TRUST:Ljava/lang/String; = "revoke_trust"

.field public static final FUNCTION_STATUS_ACTIVE:Ljava/lang/String; = "active"

.field public static final FUNCTION_STATUS_CLOSE:Ljava/lang/String; = "close"

.field public static final FUNCTION_STATUS_OPEN:Ljava/lang/String; = "open"

.field public static final FUNCTION_STATUS_STOP:Ljava/lang/String; = "stop"

.field private static final KEY_ENABLE_TRUST_AGENT_FINISHED:Ljava/lang/String; = "key_enable_trust_agent_finished"

.field public static final MODE_CLOSE:I = 0x0

.field public static final MODE_ON_BODY:I = 0x1

.field public static final MODE_TRUST_DEVICES:I = 0x10

.field public static final MODE_TRUST_PLACES:I = 0x100

.field public static final REQUEST_TRUST_AGENT_CMD:Ljava/lang/String; = "request_trust_agent_cmd"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "sp_smart_lock_mediator"

.field private static final SMART_LOCK_CLASS_NAME:Ljava/lang/String; = "com.coloros.systemui.smartlock.SmartLockTrustAgentService"

.field public static final SMART_LOCK_ENABLE:Ljava/lang/String; = "smart_lock_enable"

.field private static final SMART_LOCK_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final SMART_LOCK_SERVICE_ACTION:Ljava/lang/String; = "com.coloros.smartlcok.SMART_LOCK"

.field private static final SMART_LOCK_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.smartlock"

.field public static final SMART_LOCK_TYPE_DEVICE:Ljava/lang/String; = "trust_device"

.field public static final SMART_LOCK_TYPE_ON_BODY:Ljava/lang/String; = "on_body"

.field public static final SMART_LOCK_TYPE_PLACE:Ljava/lang/String; = "trust_place"

.field private static final TAG:Ljava/lang/String; = "SmartlockMediator"

.field public static final UPDATE_MODE_DEFAULT:I = 0x10000

.field public static final UPDATE_MODE_LOCK:I = 0x10001

.field public static final UPDATE_MODE_NOLOCK:I = 0x10003

.field public static final UPDATE_MODE_UNLOCK:I = 0x10002

.field private static sInstance:Lcom/coloros/systemui/smartlock/SmartlockMediator;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsSmartLockEnable:Z

.field private mIsSmartLockTrust:Z

.field private mSmartLockCallback:Lcom/coloros/systemui/smartlock/ISmartLockCallback;

.field private mSmartlockService:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

.field private mSmartlockSwitchObserver:Landroid/database/ContentObserver;

.field private final mStartSmartlockServiceRunnable:Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;

.field private final mStopSmartlockServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;-><init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;Lcom/coloros/systemui/smartlock/SmartlockMediator$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStartSmartlockServiceRunnable:Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockTrust:Z

    .line 87
    new-instance v0, Lcom/coloros/systemui/smartlock/SmartlockMediator$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator$1;-><init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V

    iput-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 168
    new-instance v0, Lcom/coloros/systemui/smartlock/SmartlockMediator$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/smartlock/SmartlockMediator$2;-><init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockSwitchObserver:Landroid/database/ContentObserver;

    .line 188
    new-instance v0, Lcom/coloros/systemui/smartlock/SmartlockMediator$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator$3;-><init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V

    iput-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartLockCallback:Lcom/coloros/systemui/smartlock/ISmartLockCallback;

    .line 221
    new-instance v0, Lcom/coloros/systemui/smartlock/SmartlockMediator$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator$4;-><init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V

    iput-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mConnection:Landroid/content/ServiceConnection;

    .line 267
    new-instance v0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;-><init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V

    iput-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStopSmartlockServiceRunnable:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->handleUpdateSmartlockState()V

    .line 119
    invoke-direct {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->enableTrustAgent()V

    .line 120
    iget-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->handleUpdateSmartlockState()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockTrust:Z

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/smartlock/SmartlockMediator;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockTrust:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockService:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    return-object p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/smartlock/SmartlockMediator;Lcom/coloros/systemui/smartlock/ISmartLockInterface;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockService:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    return-object p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockCallback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartLockCallback:Lcom/coloros/systemui/smartlock/ISmartLockCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Landroid/content/ServiceConnection;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private enableTrustAgent()V
    .locals 1

    .line 124
    new-instance v0, Lcom/coloros/systemui/smartlock/-$$Lambda$SmartlockMediator$FxRZ0Y-N7RgNYhnS3w0zhozp9Bw;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/smartlock/-$$Lambda$SmartlockMediator$FxRZ0Y-N7RgNYhnS3w0zhozp9Bw;-><init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/coloros/systemui/smartlock/SmartlockMediator;
    .locals 2

    const-class v0, Lcom/coloros/systemui/smartlock/SmartlockMediator;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/smartlock/SmartlockMediator;->sInstance:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/smartlock/SmartlockMediator;->sInstance:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    .line 113
    :cond_0
    sget-object p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->sInstance:Lcom/coloros/systemui/smartlock/SmartlockMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleUpdateSmartlockState()V
    .locals 5

    const-string v0, "SmartlockMediator"

    const/4 v1, 0x0

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_lock_enable"

    .line 158
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 157
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "handleUpdateSmartlockState:"

    .line 160
    invoke-static {v0, v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    .line 162
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockEnable:Z

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateSmartlockState, currentUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mIsSmartLockEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkSmartLockActiveState()V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isStrongAuthTimeOut()Z

    move-result v0

    const-string v1, "revoke_trust"

    const-string v2, "SmartlockMediator"

    if-eqz v0, :cond_1

    .line 343
    iget-boolean v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockTrust:Z

    if-eqz v0, :cond_0

    const-string v0, "checkSmartLockActiveState, isStrongAuthTimeOut, check false."

    .line 344
    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->requestTrustAgent(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 352
    iget-object v3, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockService:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    if-eqz v3, :cond_3

    .line 354
    :try_start_0
    invoke-interface {v3}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->isSmartLockActiveMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "grant_trust"

    .line 356
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->requestTrustAgent(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->requestTrustAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartLockActiveMode Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSmartLockActiveState, isActive = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-boolean v1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockTrust:Z

    if-eq v0, v1, :cond_4

    .line 366
    iput-boolean v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockTrust:Z

    :cond_4
    return-void
.end method

.method public closeConnection()V
    .locals 3

    const-string v0, "SmartlockMediator"

    const-string v1, "closeConnection begin"

    .line 320
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockService:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    if-eqz v1, :cond_1

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now mStopSmartlockServiceRunnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStopSmartlockServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStopSmartlockServiceRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->hasSameTaskInWorkLooper(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStopSmartlockServiceRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 327
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopProviderService ThreadUtil already has the task mStopPictorialServiceiRunnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStopSmartlockServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "closeConnection mSmartlockService = null"

    .line 331
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "closeConnection end"

    .line 334
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getActiveMode()I
    .locals 3

    .line 383
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockService:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    const-string v0, "SmartlockMediator"

    if-eqz p0, :cond_0

    .line 385
    :try_start_0
    invoke-interface {p0}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->getSmartLockMode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveMode Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    .line 390
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveMode, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getActiveTypeString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "on_body"

    return-object p0

    :cond_0
    const/16 p0, 0x10

    if-ne p1, p0, :cond_1

    const-string p0, "trust_device"

    return-object p0

    :cond_1
    const/16 p0, 0x100

    if-ne p1, p0, :cond_2

    const-string p0, "trust_place"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSmartLockEnable()Z
    .locals 0

    .line 338
    iget-boolean p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mIsSmartLockEnable:Z

    return p0
.end method

.method public synthetic lambda$enableTrustAgent$0$SmartlockMediator()V
    .locals 8

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "sp_smart_lock_mediator"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "key_enable_trust_agent_finished"

    .line 128
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "SmartlockMediator"

    if-nez v1, :cond_2

    const-string v1, "enable trust agent start"

    .line 130
    invoke-static {v4, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 136
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.systemui"

    const-string v7, "com.coloros.systemui.smartlock.SmartLockTrustAgentService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "enable smartlock trust agent"

    .line 141
    invoke-static {v4, v6}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    invoke-virtual {v1, p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 148
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trust agent already enabled in user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifySmartLock(I)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySmartLock,mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartlockMediator"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockService:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    if-eqz p0, :cond_0

    .line 374
    :try_start_0
    invoke-interface {p0, p1}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->notifySmartLock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifySmartLock Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 412
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->registerSmartlockState()V

    .line 413
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->openConnection()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 417
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->unRegisterSmartlockState()V

    .line 418
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->closeConnection()V

    return-void
.end method

.method public onKeyguardDone()V
    .locals 3

    const v0, 0x10002

    .line 434
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->notifySmartLock(I)V

    .line 435
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getActiveMode()I

    move-result v0

    .line 439
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getActiveTypeString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "smartlock_mode"

    .line 442
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    const-string v0, "smartlock_unlock"

    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->openConnection()V

    .line 428
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->checkSmartLockActiveState()V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    const v0, 0x10001

    .line 422
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->notifySmartLock(I)V

    .line 423
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->checkSmartLockActiveState()V

    return-void
.end method

.method public openConnection()V
    .locals 2

    .line 288
    invoke-direct {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->handleUpdateSmartlockState()V

    .line 289
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    const-string v1, "SmartlockMediator"

    if-nez v0, :cond_0

    const-string p0, "user locked, unable to start service"

    .line 290
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "have not gone through the setup wizard, unable to start service"

    .line 295
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "fbe mode, unable to start service"

    .line 300
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockService:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->isSmartLockEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->startServices()V

    :cond_3
    return-void
.end method

.method public registerSmartlockState()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_lock_enable"

    .line 178
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockSwitchObserver:Landroid/database/ContentObserver;

    .line 180
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    .line 178
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public requestTrustAgent(Ljava/lang/String;)V
    .locals 3

    .line 406
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    const-class v2, Lcom/coloros/systemui/smartlock/SmartLockTrustAgentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "request_trust_agent_cmd"

    .line 407
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public startServices()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStartSmartlockServiceRunnable:Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->hasSameTaskInWorkLooper(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStartSmartlockServiceRunnable:Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadUtil already has the task mStartSmartlockServiceRunnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mStartSmartlockServiceRunnable:Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmartlockMediator"

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unRegisterSmartlockState()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator;->mSmartlockSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
