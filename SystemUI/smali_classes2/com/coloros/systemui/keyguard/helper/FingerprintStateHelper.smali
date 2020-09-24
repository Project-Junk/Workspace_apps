.class public Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;
.super Ljava/lang/Object;
.source "FingerprintStateHelper.java"


# static fields
.field private static final OPPO_CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.oppo.camera"

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;


# instance fields
.field private final OPPO_WALLET_PACKAGE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLockLater:Z

.field private mShouldCameraFpShutter:Z

.field private mShouldRealseFingerprint:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->TAG:Ljava/lang/String;

    const-string v0, "com.finshell.wallet"

    .line 17
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->OPPO_WALLET_PACKAGE_NAME:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;
    .locals 2

    .line 26
    sget-object v0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 33
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    return-object p0
.end method

.method private isKeyguardAboveShouldBeRecord(Ljava/lang/String;)Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getTopPackageTaskInfo(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public isLockLater()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->mLockLater:Z

    return p0
.end method

.method public setKeyguardOccluded(Z)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardOccluded  Occluded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportCameraFpShutter()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "com.oppo.camera"

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->isKeyguardAboveShouldBeRecord(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->mShouldRealseFingerprint:Z

    goto :goto_0

    .line 48
    :cond_0
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_SIDE_FINGERPRINT:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "com.finshell.wallet"

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->isKeyguardAboveShouldBeRecord(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->mShouldRealseFingerprint:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->mShouldRealseFingerprint:Z

    :goto_0
    return-void
.end method

.method public setLockLater(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->mLockLater:Z

    return-void
.end method

.method public shouleRealseFingerprintForOtherApp()Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportCameraFpShutter()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_SIDE_FINGERPRINT:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->mShouldRealseFingerprint:Z

    if-eqz v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->TAG:Ljava/lang/String;

    const-string v0, "shouleRealseFingerprintForOtherApp."

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
