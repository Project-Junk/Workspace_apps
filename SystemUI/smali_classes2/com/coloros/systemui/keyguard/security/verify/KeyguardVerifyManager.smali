.class public Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;
.super Ljava/lang/Object;
.source "KeyguardVerifyManager.java"


# static fields
.field private static final IS_SILIENT_REBOOT:Ljava/lang/String; = "is_silent_reboot"

.field public static final KEYGUARD_DONE_BIOMETRIC:I = 0x1

.field public static final KEYGUARD_DONE_NONE:I = 0x0

.field public static final KEYGUARD_DONE_STRONG_AUTH:I = 0x2

.field private static final KEYGUARD_RESTART_MODE:Ljava/lang/String; = "oppo.restart.mode"

.field private static final MAX_PIN_PASSWORD_LENGTH:I = 0x8

.field private static final MSG_RETRY_CHECK:I = 0x64

.field private static final RETRY_CHECK_DELAYED:I = 0x1f4

.field private static final RETRY_MAX_TIMES:I = 0x3

.field private static final RO_BOOT_MODE:Ljava/lang/String; = "ro.boot.mode"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "sp_keyguard_update_monitor"

.field private static final SILENT_REBOOT_INIT_TIME:I = -0x1

.field private static final SILENT_REBOOT_TIME:Ljava/lang/String; = "silent_reboot"

.field private static final SP_KEY_IS_DISABLE_FBE_MODE:Ljava/lang/String; = "sp_key_is_disable_fbe_mode"

.field private static final SP_KEY_IS_STRONG_AUTH_TIMEOUT:Ljava/lang/String; = "sp_key_is_strong_auth_timeout_user_"

.field private static final SP_KEY_IS_SYSTEM_REBOOTED:Ljava/lang/String; = "sp_key_is_system_rebooted"

.field private static final SP_KEY_NEED_VERIFY_ON_SYS_REBOOT:Ljava/lang/String; = "sp_key_need_verify_on_sys_reboot"

.field private static final SYS_OPPO_REBOOT:Ljava/lang/String; = "sys.oppo.reboot"

.field private static final TAG:Ljava/lang/String; = "KeyguardVerifyManager"

.field public static final UNLOCK_DELAY:I = 0x7d0

.field private static sInstance:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field static sRpmbCheckFailedReason:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputKey:Ljava/lang/String;

.field private mIsVerifyRebootAfterLockout:Z

.field private mKeyguardDoneType:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mRebootMode:I

.field private mRebootRetryTimes:I

.field private mRetryHandler:Landroid/os/Handler;

.field private mRpmbCheckExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mRpmbCheckTaskCache:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

.field private mSilentRebootTime:J

.field private mSp:Landroid/content/SharedPreferences;

.field private mSysRebootIntProp:I

.field private mSystemRebootAndInFbeMode:Z

.field private mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;

    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;-><init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRetryHandler:Landroid/os/Handler;

    .line 138
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-wide/16 v0, -0x1

    .line 140
    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSilentRebootTime:J

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSysRebootIntProp:I

    const-string v0, "sp_keyguard_update_monitor"

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    const-string p1, ""

    .line 143
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mInputKey:Ljava/lang/String;

    .line 144
    new-instance p1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    invoke-direct {p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    .line 145
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRpmbCheckExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 148
    new-instance p1, Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRebootRetryTimes:I

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setNeedVerifyPwdWhenSysRebooted(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRetryHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$602(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mInputKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method private checkFromLockPatternChecker(ZLjava/lang/String;)V
    .locals 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFromLockPatternChecker(), isPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", entry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVerifyManager"

    .line 385
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 388
    new-instance v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;-><init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)V

    .line 411
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->clearPendingLockCheck()V

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p1, p2, v0, v1}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->checkPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p1, p2, v0, v1}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mPendingLockCheck:Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private clearPendingLockCheck()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;
    .locals 1

    .line 152
    sget-object v0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sInstance:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sInstance:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    .line 155
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sInstance:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    return-object p0
.end method

.method private readRebootSystemProperties(Landroid/content/ContentResolver;)V
    .locals 4

    const-string v0, "KeyguardVerifyManager"

    :try_start_0
    const-string v1, "silent_reboot"

    .line 310
    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSilentRebootTime:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "readRebootSysProperties, settings:silent_reboot not found!"

    .line 312
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, -0x1

    const-string v1, "sys.oppo.reboot"

    .line 314
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSysRebootIntProp:I

    const/4 p1, 0x0

    const-string v1, "oppo.restart.mode"

    .line 315
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRebootMode:I

    const-string p1, "ro.boot.mode"

    .line 316
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readRebootSysProperties, mSysRebootIntPropertie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSysRebootIntProp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSilentRebootTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSilentRebootTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mRebootMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRebootMode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", bootMode="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIsStrongAuthTimeOut(ZZI)V
    .locals 3

    .line 265
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 266
    iget p2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mKeyguardDoneType:I

    if-ne p2, v1, :cond_0

    if-ne p3, v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isStrongAuthTimeOut()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string p2, "KeyguardVerifyManager"

    if-eqz v1, :cond_1

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setIsStrongAuthTimeOut(), biometric unlock, already timeout, return, uIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsStrongAuthTimeOut(), isTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sp_key_is_strong_auth_timeout_user_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setIsSystemRebooted(Z)V
    .locals 1

    .line 227
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sp_key_is_system_rebooted"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "sp_key_need_verify_on_sys_reboot"

    .line 229
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const-string p1, "sp_key_is_disable_fbe_mode"

    .line 231
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setNeedVerifyPwdWhenSysRebooted(Z)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addNeedVerifyPwd(Z)V

    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnNeedVerifyWhenReboot(Landroid/content/Context;)V

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sp_key_need_verify_on_sys_reboot"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public checkRpmbWhenReboot()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityModel;->getSecurityMode(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRpmbWhenReboot(), securityMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardVerifyManager"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addSecurityModeInfo(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 326
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->getInfoMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendRebootState(Landroid/content/Context;Ljava/util/Map;)V

    return-void

    .line 331
    :cond_0
    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 346
    :cond_1
    iget v1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRebootRetryTimes:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRebootRetryTimes:I

    .line 347
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_2

    move v2, v3

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRpmbCheckExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$5yru5T4ps98b1ZM4QWnbXs_b-5c;

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$5yru5T4ps98b1ZM4QWnbXs_b-5c;-><init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disableFbeMode()V
    .locals 2

    .line 257
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sp_key_is_disable_fbe_mode"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 428
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x7

    if-lt p1, v0, :cond_1

    const/16 v1, 0x10

    if-gt p1, v1, :cond_1

    .line 431
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mInputKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x8

    if-ge p2, p3, :cond_3

    .line 432
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mInputKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mInputKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 434
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mInputKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p3, p1, :cond_2

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PINSix:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p3, p1, :cond_3

    .line 435
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchKeyEvent(), KEYCODE_ENTER, securityMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyguardVerifyManager"

    invoke-static {p3, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mInputKey:Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 437
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    .line 438
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;-><init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;ILcom/android/keyguard/KeyguardHostView;)V

    .line 460
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    invoke-static {p0, p1, p3, v0}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return-void
.end method

.method public getIsVerifyRebootAfterLockout()Z
    .locals 0

    .line 420
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mIsVerifyRebootAfterLockout:Z

    return p0
.end method

.method public handleKeyguardDone()V
    .locals 2

    const-string v0, "KeyguardVerifyManager"

    const-string v1, "handleKeyguardDone()"

    .line 208
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setIsSystemRebooted(Z)V

    .line 210
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnKeyguardUnlock(Landroid/content/Context;)V

    return-void
.end method

.method public handleKeyguardVisibilityChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isSystemReboot()Z

    move-result p1

    .line 481
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyguardVisibilityChanged , isSystemReboot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSystemFbeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardVerifyManager"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSystemRebootAndInFbeMode:Z

    :cond_1
    return-void
.end method

.method public handleSystemRebooted()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 159
    invoke-direct {v1, v2}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setIsSystemRebooted(Z)V

    .line 160
    iget-object v0, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    invoke-direct {v1, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->readRebootSystemProperties(Landroid/content/ContentResolver;)V

    .line 162
    iget-wide v3, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSilentRebootTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-string v4, "is_silent_reboot"

    const/4 v7, 0x0

    if-lez v3, :cond_0

    const-wide/16 v8, -0x1

    const-string v3, "silent_reboot"

    .line 163
    invoke-static {v0, v3, v8, v9}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 164
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    :goto_0
    iget v0, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSysRebootIntProp:I

    if-lez v0, :cond_1

    iget-wide v3, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSilentRebootTime:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iget v0, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRebootMode:I

    if-eq v0, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    const-string v4, "KeyguardVerifyManager"

    if-eqz v3, :cond_2

    :try_start_0
    const-string v0, "oppo.restart.mode"

    const-string v8, "1"

    .line 171
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSystemRebooted(), set rebootMode to SystemProperties as 1 error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 177
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 178
    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v15

    .line 179
    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v14

    .line 180
    iget-object v9, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v9, :cond_3

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move v13, v2

    goto :goto_3

    :cond_3
    move v13, v7

    .line 181
    :goto_3
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerifyPwdWhenSysRebooted()Z

    move-result v9

    if-nez v9, :cond_6

    if-nez v0, :cond_4

    if-eqz v13, :cond_5

    :cond_4
    if-eqz v3, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    move v9, v7

    .line 185
    :goto_4
    invoke-direct {v1, v9}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setNeedVerifyPwdWhenSysRebooted(Z)V

    goto :goto_5

    :cond_6
    const-string v9, "handleSystemRebooted(), last reboot needVerify true, keep it."

    .line 187
    invoke-static {v4, v9}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSystemRebooted(), isFpUnlockEnable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isFaceUnlockEnable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isNormalReboot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isDeviceProvisioned="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSecure="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v9, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    iget v10, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRebootMode:I

    iget-wide v11, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSilentRebootTime:J

    iget v0, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSysRebootIntProp:I

    move/from16 v16, v13

    move v13, v0

    move v0, v14

    move v14, v15

    move/from16 v17, v15

    move v15, v0

    invoke-virtual/range {v9 .. v15}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->handleSystemRebooted(IJIZZ)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerifyPwdWhenSysRebooted()Z

    move-result v9

    if-nez v9, :cond_a

    if-eqz v16, :cond_a

    if-nez v17, :cond_7

    if-nez v0, :cond_7

    if-nez v3, :cond_a

    .line 195
    :cond_7
    iget-object v0, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v8

    cmp-long v0, v8, v5

    if-eqz v0, :cond_8

    move v7, v2

    .line 196
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSystemRebooted(), shouldLockout="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_9

    .line 198
    iput-boolean v2, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mIsVerifyRebootAfterLockout:Z

    return-void

    .line 201
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->checkRpmbWhenReboot()V

    goto :goto_6

    .line 203
    :cond_a
    iget-object v0, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->getInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendRebootState(Landroid/content/Context;Ljava/util/Map;)V

    :goto_6
    return-void
.end method

.method public hasDisableFbeMode()Z
    .locals 2

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "sp_key_is_disable_fbe_mode"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNeedDelayUnlock()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSystemRebootAndInFbeMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStrongAuthTimeOut()Z
    .locals 2

    .line 261
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sp_key_is_strong_auth_timeout_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSystemReboot()Z
    .locals 2

    .line 214
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "sp_key_is_system_rebooted"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$checkRpmbWhenReboot$1$KeyguardVerifyManager(Z)V
    .locals 2

    const-string v0, "KeyguardVerifyManager"

    const-string v1, "checkRpmbWhenReboot(), start check."

    .line 349
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 350
    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    .line 351
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$YVmvYCFdxKB1HRBBKj0FHstiuV0;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$YVmvYCFdxKB1HRBBKj0FHstiuV0;-><init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Z)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->checkPassword([BZLcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckPasswordCallback;)V

    return-void
.end method

.method public synthetic lambda$null$0$KeyguardVerifyManager(ZZ[BLjava/lang/String;)V
    .locals 1

    .line 352
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkRpmbWhenReboot(), onCheck, matched="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "KeyguardVerifyManager"

    invoke-static {v0, p3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mVerifyState:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    sget-object v0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addGetRpmbResult(ZLjava/lang/String;)V

    if-eqz p2, :cond_0

    .line 354
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->disableFbeMode()V

    .line 358
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    .line 360
    invoke-direct {p0, p1, p4}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->checkFromLockPatternChecker(ZLjava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRetryHandler:Landroid/os/Handler;

    const/16 p1, 0x64

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public needVerify()Z
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerifyPwdWhenSysRebooted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isStrongAuthTimeOut()Z

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

.method public needVerifyPwdWhenSysRebooted()Z
    .locals 2

    .line 241
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "sp_key_need_verify_on_sys_reboot"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    .line 283
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v2

    .line 284
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricsPossible(I)Z

    move-result v0

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStrongAuthStateChanged(), uIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", strongAuth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isTrust="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", biometricEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardVerifyManager"

    invoke-static {v4, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v1, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnNeedVerifyWhenTimeout(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, v0, v2, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setIsStrongAuthTimeOut(ZZI)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 292
    invoke-direct {p0, v2, v2, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setIsStrongAuthTimeOut(ZZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public postRpmbCheckTask(Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;)V
    .locals 2
    .param p1    # Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 369
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->isSystemUserTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRpmbCheckTaskCache:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    :cond_1
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRpmbCheckTaskCache:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postRpmbCheckTask(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardVerifyManager"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRpmbCheckExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mRpmbCheckTaskCache:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIsVerifyRebootAfterLockout(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mIsVerifyRebootAfterLockout:Z

    return-void
.end method

.method public setKeyguardDoneType(II)V
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardDoneType(), type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVerifyManager"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mKeyguardDoneType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 302
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->sendMessage(IZ)V

    .line 304
    invoke-direct {p0, v0, v1, p2}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setIsStrongAuthTimeOut(ZZI)V

    :cond_0
    return-void
.end method

.method public setSystemRebootWhenSetupWizardFinish()V
    .locals 2

    const-string v0, "KeyguardVerifyManager"

    const-string v1, "Set isSystemRboot value true when SetupWizard finish"

    .line 221
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setIsSystemRebooted(Z)V

    return-void
.end method
