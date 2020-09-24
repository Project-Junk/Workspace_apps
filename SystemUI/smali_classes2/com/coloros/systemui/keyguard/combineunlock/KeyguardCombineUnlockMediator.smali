.class public Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;
.super Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;
.source "KeyguardCombineUnlockMediator.java"


# static fields
.field private static final FACE_DETECT_TIMEOUT_THRESHOLD_START_BY_FINGERPRINT:I = 0x4b0

.field private static final KEY_FACE_FP_COMBINE_UNLOCK:Ljava/lang/String; = "fingerprint_face_combination_unlock_switch"

.field private static final TAG:Ljava/lang/String; = "KeyguardCombineUnlockMediator"

.field private static sInstance:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;


# instance fields
.field private mCombineUnlockInScreenOff:Z

.field private mFaceFpCombineObserver:Landroid/database/ContentObserver;

.field private mStartFaceTimeoutDetectStamp:J

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserCombineUnlockFail:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 50
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUserCombineUnlockFail:Landroid/util/SparseBooleanArray;

    .line 217
    new-instance p1, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator$1;

    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator$1;-><init>(Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mFaceFpCombineObserver:Landroid/database/ContentObserver;

    .line 51
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 55
    new-instance p1, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockMediator$kWibdRBjXRXMG8J5Z39jdnwiO3A;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockMediator$kWibdRBjXRXMG8J5Z39jdnwiO3A;-><init>(Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->execInMainThread(Ljava/lang/Runnable;)V

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mContext:Landroid/content/Context;

    const-string v0, "fingerprint_face_combination_unlock_switch"

    .line 57
    invoke-static {v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mFaceFpCombineObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    .line 56
    invoke-static {p1, v0, v1, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 61
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->handleFaceFpCombineSwitchChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->handleFaceFpCombineSwitchChange()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;
    .locals 1

    .line 43
    sget-object v0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->sInstance:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->sInstance:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    .line 46
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->sInstance:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    return-object p0
.end method

.method private handleFaceFpCombineSwitchChange()V
    .locals 3

    .line 208
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mFaceFpCombineUnlock:Z

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint_face_combination_unlock_switch"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    .line 213
    :cond_1
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mFaceFpCombineUnlock:Z

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFaceFpCombineSwitchChange, val="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Keyguard"

    const-string v1, "KeyguardCombineUnlockMediator"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private shouldStartCombineUnlock()Z
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mFaceFpCombineUnlock:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 197
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 198
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    move v1, p0

    :cond_1
    return v1
.end method


# virtual methods
.method public isCombineUnlockFail()Z
    .locals 2

    .line 204
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUserCombineUnlockFail:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public isCombineUnlockInScreenOff()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockInScreenOff:Z

    return p0
.end method

.method public isCombineUnlockRunning()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    return p0
.end method

.method public synthetic lambda$new$0$KeyguardCombineUnlockMediator()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public notifyScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->composeDozeViewLayerImpl(Z)V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 165
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 166
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    :cond_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 146
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mContext:Landroid/content/Context;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockStatistic;->collectDataOfCombineUnlockResult(Landroid/content/Context;I)V

    goto :goto_0

    .line 149
    :cond_0
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockStatistic;->collectDataOfCombineUnlockResult(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 158
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    :cond_0
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->updateDozeFaceViewAnim(Z)V

    :cond_0
    return-void
.end method

.method public resetCombineUnlockInScreenOffState()V
    .locals 1

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockInScreenOff:Z

    return-void
.end method

.method public resetCombineUnlockRunningState()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    return-void
.end method

.method public setStartFaceTimeoutDetectStamp(J)V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mFaceFpCombineUnlock:Z

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartFaceTimeoutDetectStamp,timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCombineUnlockMediator"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-wide p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mStartFaceTimeoutDetectStamp:J

    :cond_0
    return-void
.end method

.method public startListeningForFaceByFP()V
    .locals 3

    .line 65
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->shouldStartCombineUnlock()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "KeyguardCombineUnlockMediator"

    const-string v1, "startListeningForFaceByFP"

    .line 69
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    .line 71
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUserCombineUnlockFail:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 72
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isHasWakingUp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockInScreenOff:Z

    .line 76
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->setShowFrontCameraAnim(Z)V

    goto :goto_0

    .line 78
    :cond_1
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockInScreenOff:Z

    .line 80
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->updateDozeFaceViewAnim(Z)V

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockStatistic;->collectDataOfCombineUnlockResult(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public stopFaceCheck(Z)V
    .locals 9

    .line 108
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "KeyguardCombineUnlockMediator"

    const-string v1, "stopFaceCheck"

    .line 111
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-wide/16 v3, 0x0

    if-nez p1, :cond_1

    .line 115
    iget-wide v5, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mStartFaceTimeoutDetectStamp:J

    const-wide/16 v7, 0x4b0

    add-long/2addr v5, v7

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 118
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeDelta="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v5, v3

    if-lez p1, :cond_2

    .line 120
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->startFaceTimeoutDetectWithDelay(J)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUserCombineUnlockFail:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->updateDozeFaceViewAnim(Z)V

    .line 124
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    .line 125
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onCombineUnlockFail()V

    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->updateDozeFaceViewAnim(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public stopListeningForFaceByFp()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mCombineUnlockRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardCombineUnlockMediator"

    const-string v1, "stopListeningForFaceByFP"

    .line 94
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->updateDozeFaceViewAnim(Z)V

    :cond_2
    :goto_0
    return-void
.end method
