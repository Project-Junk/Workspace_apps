.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;
.super Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;
.source "OnScreenFingerprintDisplayControl.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;


# static fields
.field protected static final DOZE_DURATION:I = 0x1f4

.field protected static final DOZE_MAX_DURATION:I = 0x2710

.field protected static final DOZE_WITH_ANIM_DURATION:I = 0x9c4

.field protected static final SWITCH_ANIM_DURATION:I = 0x320

.field private static final TAG:Ljava/lang/String; = "OnScreenFingerprintDisplayControl"

.field protected static final WAKELOCK_EXTRA_HOLDING_DURATION:I = 0x12c

.field private static final WAKE_DETAILS:Ljava/lang/String; = "oppo.wakeup.systemui:clean up"

.field private static final WAKE_REASON:I = 0xb

.field public static sServiceRequest:Z


# instance fields
.field protected mAODShowMech:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

.field protected mCanRequestDraw:Z

.field private mMethodSetDozeOverride:Ljava/lang/reflect/Method;

.field private mPowerManager:Landroid/os/PowerManager;

.field protected mScreenTurnedOff:Z

.field protected mShowInAOD:Z

.field protected mSuspendRunnable:Ljava/lang/Runnable;

.field protected mTouchDown:Z

.field protected mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockCount:I

.field private mWakelockTimeStamp:J

.field protected mWindowMgr:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "Keyguard"

    .line 61
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl$1;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mSuspendRunnable:Ljava/lang/Runnable;

    .line 62
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "window"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWindowMgr:Landroid/view/WindowManager;

    const-string v1, "power"

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mScreenTurnedOff:Z

    .line 66
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "OnScreenFingerprintDisplayControl"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 67
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 68
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mAODShowMech:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    .line 69
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mAODShowMech:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->registerListener(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;)V

    .line 72
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "setDozeOverride"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {p1, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mMethodSetDozeOverride:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Can not get method setDozeOverride"

    .line 74
    invoke-static {v0, v3, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mScreenTurnedOff:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    if-eqz p1, :cond_0

    const-string p1, "SystemUI reboot while screen off !!!"

    .line 78
    invoke-static {v0, v3, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v3, 0xb

    const-string v5, "oppo.wakeup.systemui:clean up"

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->updateAODClockClient(Z)V

    .line 82
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->setDreamingStart()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->toDisplayDozeSuspend()V

    return-void
.end method

.method private toDisplayDoze(I)V
    .locals 7

    .line 156
    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockCount:I

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 158
    iget-wide v4, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockTimeStamp:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    :cond_0
    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockTimeStamp:J

    .line 160
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    add-int/lit16 v5, p1, 0x12c

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    const/4 v4, 0x3

    .line 162
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->setDozeOverride(I)V

    .line 163
    sget-object v4, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->sWorkerHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toDisplayDoze duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockCount:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timeStamp="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", wakeLockTimeStamp="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockTimeStamp:J

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Keyguard"

    const-string v0, "OnScreenFingerprintDisplayControl"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private toDisplayDozeSuspend()V
    .locals 4

    .line 169
    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockCount:I

    .line 170
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mShowInAOD:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toDisplayDozeSuspend count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Keyguard"

    const-string v3, "OnScreenFingerprintDisplayControl"

    .line 171
    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockCount:I

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelockCount:I

    .line 175
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->sWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->hasDreamingStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->setDozeOverride(I)V

    .line 179
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method


# virtual methods
.method public endDraw()V
    .locals 2

    .line 122
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->sWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mSuspendRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public hasDreamingStart()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTouchDownNow()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mTouchDown:Z

    return p0
.end method

.method public requestDraw()V
    .locals 1

    const/16 v0, 0x2710

    .line 128
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->requestDraw(I)V

    return-void
.end method

.method protected requestDraw(I)V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mScreenTurnedOff:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mCanRequestDraw:Z

    if-nez v0, :cond_1

    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->skipDrawAsPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->hasDreamingStart()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 144
    :cond_3
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->toDisplayDoze(I)V

    return-void
.end method

.method public setDozeOverride(I)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mMethodSetDozeOverride:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "Keyguard"

    const-string p1, "OnScreenFingerprintDisplayControl"

    const-string v0, "Can not get method setDozeOverride"

    .line 191
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setVisibilityInAOD(I)V
    .locals 4

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintDisplayControl"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibilityInAOD state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 93
    :goto_0
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mShowInAOD:Z

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    .line 94
    :goto_1
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mCanRequestDraw:Z

    .line 95
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mCanRequestDraw:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mShowInAOD:Z

    if-nez p1, :cond_3

    const-string p1, "Keyguard"

    const-string v2, "OnScreenFingerprintDisplayControl"

    const-string v3, "setVisibilityInAOD, set display to off"

    .line 96
    invoke-static {p1, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->setDozeOverride(I)V

    .line 99
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mShowInAOD:Z

    if-eqz p1, :cond_5

    .line 100
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthDetecting()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->restoreIconDrawable(Z)V

    goto :goto_2

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_2

    .line 106
    :cond_5
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mTouchDown:Z

    if-nez p1, :cond_6

    .line 107
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "setVisibilityInAOD"

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFingerprint(Ljava/lang/String;)V

    .line 110
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public skipDrawAsPhoneCall()Z
    .locals 3

    .line 148
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOffCallingState()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintDisplayControl"

    const-string v2, "skipDrawAsPhoneCall"

    .line 150
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method
