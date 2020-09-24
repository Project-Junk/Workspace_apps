.class public Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorExt.java"


# static fields
.field public static final CLICK_TO_LOCK:I = 0x1

.field public static final FACE_UNLOCK_AUTH_RESULT_FAILED:I = 0x64

.field public static final FINGERPRINT_AUTH_MAX_FAILED_ATTEMPTS:I = 0x5

.field public static final FINGERPRINT_FAILED_REASON_MOVE_TOO_FAST:I = 0x8

.field public static final FINGERPRINT_FAILED_TIMES_TO_ENTER_SECURE_CONTAINER:I = 0x3

.field public static final FINGERPRINT_FAILED_TIMES_TO_ENTER_SECURE_CONTAINER_OSFP_SCREENOFF:I = 0x2

.field public static final PULL_DOWN_TO_LOCK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitorExt"


# instance fields
.field private mAlarmExitOnKgd:Z

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColorKeyguardLoad:Z

.field private final mColorKeyguardObserver:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;

.field private mContext:Landroid/content/Context;

.field private mDragDownToLock:Z

.field private mHasVisibleNotification:Z

.field private mShowWireChargingAnimator:Z

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeupReson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mAlarmExitOnKgd:Z

    .line 72
    new-instance v0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt$1;-><init>(Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mColorKeyguardObserver:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;

    .line 81
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 83
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mColorKeyguardObserver:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;)V

    return-void
.end method

.method private onDragDownToLock()V
    .locals 1

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mDragDownToLock:Z

    return-void
.end method


# virtual methods
.method public allowLockKeyguard(I)Z
    .locals 3

    .line 192
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 193
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v2

    .line 199
    :cond_1
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 200
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 203
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public clearDragDownState()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mDragDownToLock:Z

    return-void
.end method

.method public handleColorKeyguardLoad(Z)V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mColorKeyguardLoad:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 120
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mColorKeyguardLoad:Z

    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onColorKeyguardLoad(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hasVisibleNotification()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mHasVisibleNotification:Z

    return p0
.end method

.method public isAlarmExitOnKgd()Z
    .locals 0

    .line 276
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mAlarmExitOnKgd:Z

    return p0
.end method

.method public isChargingAnimatorShow()Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mShowWireChargingAnimator:Z

    return p0
.end method

.method public isColorKeyguardLoad()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mColorKeyguardLoad:Z

    return p0
.end method

.method public isDismissKeyguardByPressedLockIcon()Z
    .locals 2

    .line 246
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 249
    :cond_0
    const-class p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 250
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    return v0

    .line 253
    :cond_1
    const-class p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 254
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public isDragDownToLock()Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mDragDownToLock:Z

    return p0
.end method

.method public isLockScreenShowLocalWallpaper()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 161
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 162
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isAutoPlaySwitchOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNightMode()Z
    .locals 1

    .line 291
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 292
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyguardDone()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->handleKeyguardDone()V

    .line 174
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/smartlock/SmartlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->onKeyguardDone()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetBiometricLockout()V

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->onKeyguardDone()V

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFpFailPendingState(Z)V

    .line 182
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->resetDozeFaceView()V

    return-void
.end method

.method public onSystemRebooted()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->updateLockDeadState(Landroid/content/Context;)V

    .line 169
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->handleSystemRebooted()V

    return-void
.end method

.method public processLockWhenTrustEnable(I)Z
    .locals 3

    .line 211
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->allowLockKeyguard(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processLockWhenTrustEnable type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitorExt"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->onDragDownToLock()V

    .line 217
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    const-string v2, "counts_pull_down_lock"

    invoke-static {p1, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    const-string v2, "counts_click_lock"

    invoke-static {p1, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    :cond_2
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockIconPressed()V

    .line 223
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    goto :goto_1

    .line 225
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/smartlock/SmartlockMediator;

    move-result-object p0

    const-string p1, "revoke_trust"

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->requestTrustAgent(Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public setAlarmExitOnKgdValue(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mAlarmExitOnKgd:Z

    return-void
.end method

.method public setMonitorCallback(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public setWakeupReason(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mWakeupReson:Ljava/lang/String;

    return-void
.end method

.method public shouldShowKgdAnim()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mWakeupReson:Ljava/lang/String;

    const-string v1, "android.policy:POWER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mWakeupReson:Ljava/lang/String;

    const-string v0, "oppo.wakeup.gesture:DOUBLE_TAP_SCREEN"

    .line 267
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public shouldStayInNormalKgd(II)Z
    .locals 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldStayInNormalKgd failCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitorExt"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    if-ge p1, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lt p1, v1, :cond_3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-lt p1, v0, :cond_3

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    const/16 v1, 0x8

    if-ne p2, v1, :cond_4

    .line 101
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 102
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    if-nez v0, :cond_5

    const/4 p0, 0x5

    if-lt p1, p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    xor-int/lit8 p0, v2, 0x1

    return p0

    :cond_7
    if-ge p1, v1, :cond_8

    move v2, v3

    :cond_8
    return v2
.end method

.method public updateVisibleNotification(Z)V
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mHasVisibleNotification:Z

    if-eq v0, p1, :cond_1

    .line 135
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mHasVisibleNotification:Z

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onVisibleNotificationChange(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateVisibleWiredChargingAnimator(Z)V
    .locals 2

    .line 150
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mShowWireChargingAnimator:Z

    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onChargingVisibilityChange(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
