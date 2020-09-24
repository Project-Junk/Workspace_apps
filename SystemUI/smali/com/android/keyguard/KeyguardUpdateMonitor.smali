.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    }
.end annotation


# static fields
.field private static final ACTION_FACE_UNLOCK_STARTED:Ljava/lang/String; = "com.android.facelock.FACE_UNLOCK_STARTED"

.field private static final ACTION_FACE_UNLOCK_STOPPED:Ljava/lang/String; = "com.android.facelock.FACE_UNLOCK_STOPPED"

.field private static final BIOMETRIC_CONTINUE_DELAY_MS:I = 0x1f4

.field private static final BIOMETRIC_STATE_CANCELLING:I = 0x2

.field private static final BIOMETRIC_STATE_CANCELLING_RESTARTING:I = 0x3

.field private static final BIOMETRIC_STATE_RUNNING:I = 0x1

.field private static final BIOMETRIC_STATE_STOPPED:I = 0x0

.field public static final CHECK_FP_AUTH_MODE:I = 0x3

.field public static final CHECK_FP_DO_NOTHING:I = 0x0

.field public static final CHECK_FP_INVALIDATE:I = -0x1

.field public static final CHECK_FP_STOP_ALL_MODE:I = 0x1

.field public static final CHECK_FP_TOUCH_MODE:I = 0x2

.field public static final CORE_APPS_ONLY:Z

.field private static final DEBUG:Z = true

.field private static final DEBUG_SIM_STATES:Z = true

.field private static final DEFAULT_CHARGING_VOLTAGE_MICRO_VOLT:I = 0x4c4b40

.field public static final FACE_CAMERA_OCCUPIED_RETRY_MAX:I = 0x1

.field private static final FACE_CAMERA_OCCUPIED_TIMEOUT:I = 0x32

.field private static final FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

.field private static final HW_UNAVAILABLE_RETRY_MAX:I = 0x3

.field private static final HW_UNAVAILABLE_TIMEOUT:I = 0xbb8

.field private static final IGNORE_SHOWING_ARG:I = 0x1

.field private static final IS_FROM_SELL_MODE:Ljava/lang/String; = "isSellMode"

.field private static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MSG_AIRPLANE_MODE_CHANGED:I = 0x149

.field private static final MSG_ASSISTANT_STACK_CHANGED:I = 0x14f

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BIOMETRIC_AUTHENTICATION_CONTINUE:I = 0x150

.field private static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_COLOR_OS_THEME_CHANGED:I = 0x155

.field private static final MSG_DEVICE_POLICY_MANAGER_STATE_CHANGED:I = 0x151

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_DREAMING_STATE_CHANGED:I = 0x14d

.field private static final MSG_FACE_UNLOCK_STATE_CHANGED:I = 0x147

.field private static final MSG_FINISHED_GOING_TO_SLEEP:I = 0x140

.field private static final MSG_FINISHED_WAKING_UP:I = 0x154

.field private static final MSG_KEYGUARD_BOUNCER_CHANGED:I = 0x142

.field private static final MSG_KEYGUARD_RESET:I = 0x138

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_REPORT_EMERGENCY_CALL_ACTION:I = 0x13e

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x14c

.field private static final MSG_SCREEN_TURNED_ON:I = 0x14b

.field private static final MSG_SERVICE_STATE_CHANGE:I = 0x14a

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_SIM_SUBSCRIPTION_INFO_CHANGED:I = 0x148

.field private static final MSG_STARTED_GOING_TO_SLEEP:I = 0x141

.field private static final MSG_STARTED_WAKING_UP:I = 0x13f

.field private static final MSG_START_FACE_AUTH_STATE:I = 0x1f4

.field private static final MSG_START_FINGERPRINT_AUTH_STATE:I = 0x191

.field private static final MSG_STOP_FACE_AUTH_STATE:I = 0x1f5

.field private static final MSG_STOP_FINGERPRINT_LISTEN_STATE:I = 0x192

.field private static final MSG_TELEPHONY_CAPABLE:I = 0x152

.field private static final MSG_TIMEZONE_UPDATE:I = 0x153

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_UPDATE_FINGERPRINT_LISTEN_STATE:I = 0x190

.field private static final MSG_USER_INFO_CHANGED:I = 0x13d

.field private static final MSG_USER_SWITCHING:I = 0x136

.field private static final MSG_USER_SWITCH_COMPLETE:I = 0x13a

.field private static final MSG_USER_UNLOCKED:I = 0x14e

.field private static final OPPO_ACTION_FINGERPRINT_RESET_PWD_SUCCESS:Ljava/lang/String; = "oppo.intent.action.SET_UNLOCK_PASSWORD"

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static sCurrentUser:I

.field private static sDisableHandlerCheckForTesting:Z

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private final ACTION_DEEP_PROTECT_OPEN_HIDE_APP:Ljava/lang/String;

.field private final FINGERPRINT_SIDE_FP_SCREEN_OFF_CANCEL:I

.field private final MANUALLY_LOCK_TOGGLE:Ljava/lang/String;

.field private final PRIVACY_FINGER_EXTRA:Ljava/lang/String;

.field private mAffordanceSwiping:Z

.field private mAssistantVisible:Z

.field private mAuthInterruptActive:Z

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBiometricCallbackHandler:Landroid/os/Handler;

.field private mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

.field private mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private mBootCompleted:Z

.field private mBouncer:Z

.field private mBouncerShowImmediately:Z

.field protected final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceInteractive:Z

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mExeDismiss:Z

.field mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mFaceCameraOccupiedError:Z

.field private mFaceCameraOccupiedRetryCount:I

.field private mFaceCancelSignal:Landroid/os/CancellationSignal;

.field private mFaceHandler:Landroid/os/Handler;

.field private final mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFaceRunningState:I

.field private mFaceSettingEnabledForUser:Z

.field private mFaceWorkThread:Landroid/os/HandlerThread;

.field private mFingerTouchDown:Z

.field private mFingerprintAuthDetecting:Landroid/util/SparseBooleanArray;

.field private mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private mFingerprintHandler:Landroid/os/Handler;

.field private final mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private mFingerprintRunningState:I

.field private mFingerprintWorkThread:Landroid/os/HandlerThread;

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleep:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareFaceUnavailableRetryCount:I

.field private mHardwareFingerprintUnavailableRetryCount:I

.field private mHasLockscreenWallpaper:Z

.field private mHasResetPwd:Z

.field private mHasWakingUp:Z

.field private mIgnoreKeyguardShowing:Z

.field private mIsDeviceSleeping:Z

.field private mIsDreaming:Z

.field private mIsInLockTaskMode:Z

.field private mIsPasswordSuccessUnLock:Z

.field private final mIsPrimaryUser:Z

.field private mIsShowFpWhenBouncer:Z

.field private mKeyguardGoingAway:Z

.field private mKeyguardIsVisible:Z

.field private mKeyguardOccluded:Z

.field private mKeyguardShowing:Z

.field private mKeyguardUpdateMonitorExt:Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

.field private mLockIconPressed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockShade:Z

.field private mLogoutEnabled:Z

.field private mNeedsSlowUnlockTransition:Z

.field private mPendingFpFail:Z

.field private mPhoneState:I

.field private mQsExpanded:Z

.field private mRetryFaceAuthentication:Ljava/lang/Runnable;

.field private mRetryFingerprintAuthentication:Ljava/lang/Runnable;

.field private mRetryListeningFace:Ljava/lang/Runnable;

.field private mRingMode:I

.field private mScreenOn:Z

.field public mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMagazine:Z

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field protected mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field protected mTelephonyCapable:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUpdateBiometricListeningState:Ljava/lang/Runnable;

.field private mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

.field private mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 231
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.FallbackHome"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    :try_start_0
    const-string v0, "package"

    .line 243
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    .line 281
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 293
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 317
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 318
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 324
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedRetryCount:I

    .line 328
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedError:Z

    .line 331
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$TNplxcnHy3ycSi2sVZ71S93TG08;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$TNplxcnHy3ycSi2sVZ71S93TG08;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryListeningFace:Ljava/lang/Runnable;

    .line 345
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowFpWhenBouncer:Z

    .line 378
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const-string v0, "com.oppo.engineer.OpenHideApp"

    .line 407
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->ACTION_DEEP_PROTECT_OPEN_HIDE_APP:Ljava/lang/String;

    const-string v0, "finger_print_id"

    .line 408
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PRIVACY_FINGER_EXTRA:Ljava/lang/String;

    const/16 v0, 0x10

    .line 413
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FINGERPRINT_SIDE_FP_SCREEN_OFF_CANCEL:I

    .line 416
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 537
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 548
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 556
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 557
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 558
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 559
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    .line 560
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 563
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    const-string v0, "manually_lock_toggle"

    .line 567
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->MANUALLY_LOCK_TOGGLE:Ljava/lang/String;

    .line 570
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$w3Onnt26KGuFqBxQaSJgQd6Y_G4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$w3Onnt26KGuFqBxQaSJgQd6Y_G4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    .line 874
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    .line 1083
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    .line 1363
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 1365
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1494
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 1522
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 1530
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 1538
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 1698
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 3346
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$16;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 3655
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthDetecting:Landroid/util/SparseBooleanArray;

    .line 2211
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 2212
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 2213
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 2214
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$-GZaxeQabrHzh5b8rORPTQGQVD8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$-GZaxeQabrHzh5b8rORPTQGQVD8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 2218
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->initBiometricWorkThread()V

    .line 2223
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 2224
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 2234
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 2238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 2239
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 2240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 2241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 2242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 2243
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 2244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SERVICE_STATE"

    .line 2245
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 2246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 2247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 2248
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "oppo.intent.action.SKIN_CHANGED"

    .line 2251
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "oppo.intent.action.SET_UNLOCK_PASSWORD"

    .line 2255
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2257
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x3e8

    .line 2260
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 2261
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2262
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2264
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    .line 2265
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 2266
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.facelock.FACE_UNLOCK_STARTED"

    .line 2267
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.facelock.FACE_UNLOCK_STOPPED"

    .line 2268
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 2270
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2271
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2276
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$14;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    const-string v2, "KeyguardUpdateMonitor"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2290
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    const-string v0, "trust"

    .line 2293
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 2294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 2295
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    const-string v0, "dreams"

    .line 2299
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2298
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 2301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fingerprint"

    .line 2302
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2304
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "face"

    .line 2305
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 2308
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_4

    .line 2309
    :cond_3
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 2310
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricManager;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    .line 2313
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 2314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_5

    .line 2315
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    .line 2317
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_6

    .line 2318
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    .line 2321
    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 2322
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 2323
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    .line 2324
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2325
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 2326
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAirplaneModeState()V

    .line 2330
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->initKeyguardUpdateMonitorExt()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQsExpanded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/os/IRemoteCallback;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockShade:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDreamingStateChanged(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserUnlocked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLogoutEnabled()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleColorOSThemeChanged()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSettingEnabledForUser:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncerShowImmediately:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    return p0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    return p0
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasResetPwd:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSellModeClearPassword()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceLockoutReset()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingFpFail:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowMagazine:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->touchEven(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerTouchDown:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePrivacyFingerAuthentication(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthenticated(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAcquired(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsInLockTaskMode:Z

    return p0
.end method

.method static synthetic access$5502(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsInLockTaskMode:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$5602(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5800(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)I
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpMode(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Ljava/lang/String;
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->modeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeZoneUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartFingerprintAuth()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStopFingerprintAuth()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartFaceAuth(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStopFaceAuth(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Z
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPrivacyFinger(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method private checkIsHandlerThread()V
    .locals 2

    .line 3554
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sDisableHandlerCheckForTesting:Z

    if-eqz v0, :cond_0

    return-void

    .line 3559
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3563
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must call on mHandler\'s thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 3565
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", not "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardUpdateMonitor"

    .line 3564
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static disableHandlerCheckForTesting(Landroid/app/Instrumentation;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "Must only call this method in tests!"

    .line 3582
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 3586
    sput-boolean p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sDisableHandlerCheckForTesting:Z

    return-void
.end method

.method private dispatchErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    .line 1341
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1342
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1344
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchSellModeClearPassword()V
    .locals 2

    const/4 v0, 0x0

    .line 4155
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4156
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 4158
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSellModeClearedPassword()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized getCurrentUser()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 578
    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getFpMode(Z)I
    .locals 6

    .line 3739
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFingerprintUnlock()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3744
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->isLockDeadState()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3748
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->isFingerprintUnlockEnable()Z

    move-result v0

    const-string v3, "KeyguardUpdateMonitor"

    if-nez v0, :cond_2

    const-string p0, "checkFpMode, isFingerprintUnlockEnable = false"

    .line 3749
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3752
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    .line 3753
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerify()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p0, "checkFpMode, need verify password"

    .line 3754
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3757
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldBiometricLockoutAttemptDeadline()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p0, "checkFpMode, lock out, return"

    .line 3758
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3761
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isSystemReboot()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3762
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerifyPwdWhenSysRebooted()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string p0, "checkFpMode, unlocking with biometric not allowed"

    .line 3763
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3766
    :cond_6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "checkFpMode, current user has trust"

    .line 3767
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3770
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "checkFpMode, mBiometricAuthSuccess"

    .line 3771
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3777
    :cond_8
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->shouleRealseFingerprintForOtherApp()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v0, :cond_9

    const-string p0, "checkFpMode,fingerprint authenticaiton should be release. "

    .line 3779
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3786
    :cond_9
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p0, "checkFpMode, in children mode"

    .line 3787
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3793
    :cond_a
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3794
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowFpWhenBouncer:Z

    if-nez v0, :cond_b

    const-string p0, "checkFpMode, mBouncer SecurityContainerShowing"

    .line 3795
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3800
    :cond_b
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQsExpanded:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockShade:Z

    if-eqz v0, :cond_d

    :cond_c
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowFpWhenBouncer:Z

    if-eqz v0, :cond_1a

    :cond_d
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowMagazine:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAffordanceSwiping:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncerShowImmediately:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowFpWhenBouncer:Z

    if-nez v0, :cond_e

    goto/16 :goto_1

    .line 3810
    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object v0

    .line 3811
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isShowInScreenOffSwitch()Z

    move-result v4

    .line 3814
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v5, :cond_10

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mExeDismiss:Z

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v5, :cond_f

    if-eqz v4, :cond_f

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    if-eqz v5, :cond_10

    :cond_f
    const-string p0, " occluded in OSFingerprint device"

    .line 3816
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3820
    :cond_10
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v5, :cond_11

    if-nez v4, :cond_11

    const-string p0, "checkFpMode, do not show in ScreenOff"

    .line 3821
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3824
    :cond_11
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v4, :cond_13

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->hasDreamingStart()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v4

    if-nez v4, :cond_13

    :cond_12
    const-string p0, "checkFpMode, do not show before DreamingStart"

    .line 3825
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3828
    :cond_13
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v4, :cond_14

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsInLockTaskMode:Z

    if-eqz v4, :cond_14

    const-string p0, "checkFpMode, mIsInLockTaskMode"

    .line 3829
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3832
    :cond_14
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOffCallingState()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string p1, "checkFpMode, in calling state"

    .line 3833
    invoke-static {v3, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3834
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isTouchDownNow()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3835
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    check-cast p0, Landroid/os/PowerManager;

    .line 3836
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string p1, "com.android.keyguard.FPinCall"

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_15
    return v2

    .line 3843
    :cond_16
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->doNotShowInAOD()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3844
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isTouchDownNow()Z

    move-result v0

    if-nez v0, :cond_17

    const-string p0, "checkFpMode, AODShowMech in hide state"

    .line 3845
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3853
    :cond_17
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprintAssistant()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_0

    .line 3862
    :cond_18
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-eqz v0, :cond_1b

    const-string p0, "checkFpMode, mGoingToSleep = true"

    .line 3863
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3854
    :cond_19
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkFpMode, mKeyguardIsVisible = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mBouncer = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mKeyguardOccluded = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mKeyguardShowing = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , shouldListenForFingerprintAssistant = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3858
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprintAssistant()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3854
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3803
    :cond_1a
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkFpMode, other panel is expanded, return mQsExpanded = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQsExpanded:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mLockShade = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockShade:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , !mIsShowFpWhenBouncer="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowFpWhenBouncer:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mShowMagazine = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowMagazine:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mBouncerShowImmediately = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncerShowImmediately:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mAffordanceSwiping = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAffordanceSwiping:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3871
    :cond_1b
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p1, :cond_1c

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 3872
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->isLockLater()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string p0, "checkFpMode, keyguard is not showing"

    .line 3873
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3880
    :cond_1c
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_1d

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz p1, :cond_1d

    const-string p0, "checkFpMode,keyguard is not showing and screen on. "

    .line 3882
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3888
    :cond_1d
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasResetPwd:Z

    if-eqz p1, :cond_1e

    const-string p0, "checkFpMode, mHasResetPwd = true"

    .line 3889
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3893
    :cond_1e
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p0, "checkFpMode, isFingerprintDisabled"

    .line 3894
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3897
    :cond_1f
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-eqz p1, :cond_20

    const-string p0, "checkFpMode, mSwitchingUser "

    .line 3898
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3901
    :cond_20
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    if-nez p1, :cond_21

    const-string p0, "checkFpMode, not PrimaryUser "

    .line 3902
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3908
    :cond_21
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPasswordSuccessUnLock:Z

    if-eqz p0, :cond_22

    const-string p0, "checkFpMode, mIsPasswordSuccessUnLock"

    .line 3909
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_22
    const/4 p0, 0x3

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    .line 2016
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 2017
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2019
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private handleAirplaneModeChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 656
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 2

    .line 2900
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 2901
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2903
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2904
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2906
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleBootCompleted()V
    .locals 2

    .line 2751
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2752
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    const/4 v0, 0x0

    .line 2753
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2754
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 2756
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleColorOSThemeChanged()V
    .locals 2

    .line 4303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->updateGlobalThemeFeature(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4304
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4305
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 4307
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onColorOSThemeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDevicePolicyManagerStateChanged()V
    .locals 2

    .line 2683
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2684
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2685
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2687
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDeviceProvisioned()V
    .locals 2

    const/4 v0, 0x0

    .line 2773
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2774
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2776
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2779
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 2781
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2782
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 2787
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2788
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setSystemRebootWhenSetupWizardFinish()V

    :cond_3
    return-void
.end method

.method private handleDreamingStateChanged(I)V
    .locals 3

    .line 2179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2180
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    :goto_1
    if-ge v1, v0, :cond_2

    .line 2182
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz p1, :cond_1

    .line 2184
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2187
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method private handleFaceAcquired(I)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1041
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1042
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    .line 1044
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleFaceAuthFailed()V
    .locals 4

    .line 1021
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1023
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    goto :goto_0

    .line 1025
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1028
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1029
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    .line 1031
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 1034
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const v2, 0x7f110453

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method private handleFaceAuthenticated(I)V
    .locals 5

    const-string v0, "KeyguardUpdateMonitor"

    const-wide/16 v1, 0x8

    const-string v3, "KeyGuardUpdateMonitor#handlerFaceAuthenticated"

    .line 1050
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v3, 0x0

    .line 1054
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, p1, :cond_0

    .line 1060
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face authenticated for wrong user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    .line 1063
    :cond_0
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1064
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face authentication disabled by DPM for userId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1069
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    .line 1067
    :cond_1
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticated(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1069
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1071
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string v1, "Failed to get current user id: "

    .line 1056
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1069
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1070
    throw p1
.end method

.method private handleFaceError(ILjava/lang/String;)V
    .locals 8

    .line 1095
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    return-void

    .line 1102
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedRetryCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedRetryCount:I

    .line 1106
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedError:Z

    goto :goto_0

    .line 1108
    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedError:Z

    goto :goto_0

    .line 1111
    :cond_2
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedError:Z

    move v0, v2

    :goto_0
    const/4 v4, 0x3

    if-ne p1, v1, :cond_3

    .line 1115
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    if-ne v1, v4, :cond_3

    .line 1117
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1118
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    goto :goto_1

    .line 1120
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1124
    :goto_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    .line 1125
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_4
    if-ne p1, v3, :cond_6

    .line 1130
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    if-ge v1, v4, :cond_5

    add-int/2addr v1, v3

    .line 1131
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 1132
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1133
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1137
    :cond_5
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1138
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->showFaceTips(I)V

    :cond_6
    const/16 v1, 0x9

    if-ne p1, v1, :cond_7

    .line 1144
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x8

    .line 1146
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 1144
    invoke-virtual {v1, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1151
    :cond_7
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez p1, :cond_a

    .line 1153
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v1

    if-eqz v0, :cond_9

    .line 1156
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedRetryCount:I

    if-gt v0, v3, :cond_8

    .line 1157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryListeningFace:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryListeningFace:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1160
    :cond_8
    invoke-virtual {v1, v3}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->showFaceTips(I)V

    goto :goto_2

    .line 1163
    :cond_9
    invoke-virtual {v1, v4}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->showFaceTips(I)V

    .line 1168
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 1169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_b

    .line 1171
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method private handleFaceHelp(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1075
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1076
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1078
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFaceLockoutReset()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleFaceLockoutReset"

    .line 1178
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 2

    .line 1210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 1211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 1212
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1213
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1215
    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 2

    .line 809
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 810
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->displayKeyguardTips(I)V

    .line 811
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Okp3whcoh5rgnP06gt6YwalKV4E;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Okp3whcoh5rgnP06gt6YwalKV4E;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 819
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_2

    .line 822
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .locals 3

    const/4 v0, 0x0

    .line 797
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 800
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 803
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const v2, 0x7f11045b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method private handleFingerprintAuthenticated(I)V
    .locals 5

    const-string v0, "KeyguardUpdateMonitor"

    const-wide/16 v1, 0x8

    const-string v3, "KeyGuardUpdateMonitor#handlerFingerPrintAuthenticated"

    .line 828
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v3, 0x0

    .line 832
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, p1, :cond_0

    .line 838
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprint authenticated for wrong user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    .line 841
    :cond_0
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 847
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    .line 845
    :cond_1
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 847
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 849
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string v1, "Failed to get current user id: "

    .line 834
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 847
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 848
    throw p1
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 884
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v3, v0, :cond_0

    .line 886
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 887
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_0

    .line 889
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 893
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v3

    const-string v4, "KeyguardUpdateMonitor"

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v3

    if-nez v3, :cond_1

    if-ne p1, v1, :cond_1

    const-string v1, "handleFingerprintError authentication has been canceled."

    .line 895
    invoke-static {v4, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStopFingerprintAuth()V

    .line 897
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 901
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    if-ge v3, v0, :cond_2

    add-int/2addr v3, v1

    .line 902
    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 903
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 904
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0x8

    .line 911
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 909
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 916
    :cond_3
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    const-string v0, "fingerprint error lockout"

    .line 919
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFingerprint(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    .line 928
    :cond_4
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_SIDE_FINGERPRINT:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    if-ne p1, v0, :cond_5

    const-string v0, "fingerprint success authentication will be discard."

    .line 930
    invoke-static {v4, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 932
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 935
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 936
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_6

    .line 938
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 3

    .line 855
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->displayKeyguardTips(I)V

    .line 857
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->touchEvent(Z)V

    .line 860
    :cond_0
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$OmliJcVFNkmiWYu0l_awHIcrZUY;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$OmliJcVFNkmiWYu0l_awHIcrZUY;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 865
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_2

    .line 868
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleFingerprintLockoutReset()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleFingerprintLockoutReset"

    .line 944
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 4

    .line 3099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleKeyguardBouncerChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3101
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 3104
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v2, :cond_1

    .line 3105
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mExeDismiss:Z

    .line 3107
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_1
    move v2, v0

    .line 3111
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3112
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v3, :cond_2

    .line 3114
    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3119
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->displayKeyguardTips(I)V

    .line 3121
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 3124
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3125
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasWakingUp:Z

    if-eqz p1, :cond_5

    .line 3126
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p1, :cond_4

    .line 3127
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    goto :goto_2

    .line 3129
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    goto :goto_2

    .line 3133
    :cond_5
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3134
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    .line 3138
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->setPendingShowBouncer(Z)V

    :cond_7
    return-void
.end method

.method private handleKeyguardReset()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleKeyguardReset"

    .line 3074
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 3076
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return-void
.end method

.method private handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 2

    .line 2797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePhoneStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2799
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 2800
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 2801
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 2802
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2803
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 2805
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 2806
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz p1, :cond_3

    .line 2808
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handlePrivacyFingerAuthentication(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    .line 4349
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4350
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$20;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 2

    const/4 v0, 0x0

    .line 3147
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 3150
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRingerModeChange(I)V
    .locals 2

    .line 2828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRingerModeChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    const/4 v0, 0x0

    .line 2830
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2831
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2833
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 3

    const/4 v0, 0x0

    .line 2128
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    .line 2129
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 2130
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 2134
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPasswordLockCheckedSuccess(Z)V

    .line 2139
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2140
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedRetryCount:I

    .line 2143
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 2145
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_1

    .line 2147
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2153
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 2155
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->isFingerprintUnlockEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2156
    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$13;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 4

    .line 2106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2108
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 2110
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2115
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2117
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$rWebVh3ytZ0BAihax8ie2HflMp0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$rWebVh3ytZ0BAihax8ie2HflMp0;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2120
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_3
    :goto_1
    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 9

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onSubscriptionInfoChanged()"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "onSubscriptionInfoChanged: list is null"

    .line 622
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 625
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 630
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 631
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 632
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 633
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 635
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 638
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 639
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move v4, v2

    .line 640
    :goto_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 641
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v5, :cond_4

    .line 643
    iget v6, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v7, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v8, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 647
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 648
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_7

    .line 650
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method private handleStartFaceAuth(I)V
    .locals 10

    .line 4029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startListeningForFaceUnlock(), startType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryListeningFace:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4033
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedError:Z

    .line 4035
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 4036
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "handleStartFaceAuth, user is locked"

    .line 4037
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4040
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4041
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4042
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    .line 4043
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    const-string p0, "handleStartFaceAuth, face is running and no longer authenticating repeatedly"

    .line 4044
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->startFaceAuth(I)V

    return-void

    .line 4048
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_2

    .line 4049
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 4051
    :cond_2
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 4052
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricCallbackHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 4054
    invoke-direct {p0, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 4055
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->startFaceAuth(I)V

    :cond_3
    return-void
.end method

.method private handleStartFingerprintAuth()V
    .locals 9

    .line 3687
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "startFingerprintForAuthenticate"

    .line 3690
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 3692
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3693
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 3694
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 3696
    :cond_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 3697
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricCallbackHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    const/4 v0, 0x1

    .line 3699
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintAuthDetecting(Z)V

    .line 3700
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_2
    return-void
.end method

.method private handleStopFaceAuth(Z)V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "stopListeningForFaceUnlock()"

    .line 4064
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryListeningFace:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4066
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    .line 4067
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4068
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    .line 4069
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v1, 0x0

    .line 4070
    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 4072
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->removeFaceTimeoutDetect()V

    .line 4077
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthFailed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getPowerOff()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4078
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->stopFillLightControl()V

    :cond_1
    if-nez p1, :cond_2

    .line 4082
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez p1, :cond_3

    .line 4083
    :cond_2
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->downMotor()V

    .line 4087
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->resetCombineUnlockRunningState()V

    const/4 p1, 0x0

    .line 4089
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void
.end method

.method private handleStopFingerprintAuth()V
    .locals 2

    .line 3705
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthDetecting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "cancelFingerprint"

    .line 3708
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3709
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->displayKeyguardTips(I)V

    .line 3710
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 3711
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 3712
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    :cond_1
    const/4 v0, 0x0

    .line 3714
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintAuthDetecting(Z)V

    .line 3715
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    .line 2851
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2852
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->onTimeChanged(Landroid/content/Context;)V

    .line 2854
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->onTimeChanged(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 2858
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2859
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 2861
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleTimeZoneUpdate(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleTimeZoneUpdate"

    .line 2870
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2874
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->onTimeChanged(Landroid/content/Context;)V

    .line 2876
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->onTimeChanged(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 2880
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2881
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 2883
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 2885
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleUpdateSecurityMessage(I)V
    .locals 2

    const/4 v0, 0x0

    .line 4414
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4415
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 4417
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->updateSecurityMessage(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 2

    const/4 v0, 0x0

    .line 2191
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2192
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2194
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserLockDown()V
    .locals 2

    .line 4395
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4398
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e9

    .line 4399
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateSecurityMessage(I)V

    .line 4400
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4401
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    .line 4403
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4404
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4405
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    return-void
.end method

.method private handleUserSwitchComplete(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2725
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2726
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 2728
    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2733
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method private handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2

    .line 2699
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2700
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->updateGlobalThemeFeature(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 2703
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2704
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 2706
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2710
    :try_start_0
    invoke-interface {p2, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2715
    :catch_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2716
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->registerOpticalFpListener()V

    :cond_3
    return-void
.end method

.method private handleUserUnlocked()V
    .locals 2

    .line 2200
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    const/4 v0, 0x0

    .line 2201
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2202
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2204
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initBiometricWorkThread()V
    .locals 3

    .line 3926
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Keyguard Biometric Callback Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 3927
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 3928
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3929
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricCallbackHandler:Landroid/os/Handler;

    .line 3934
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Keyguard Fingerprint WorkerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintWorkThread:Landroid/os/HandlerThread;

    .line 3935
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 3936
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3937
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$17;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    .line 3976
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Keyguard Face WorkerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceWorkThread:Landroid/os/HandlerThread;

    .line 3977
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 3978
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3979
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$18;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceHandler:Landroid/os/Handler;

    return-void
.end method

.method private initKeyguardUpdateMonitorExt()V
    .locals 2

    .line 4126
    new-instance v0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUpdateMonitorExt:Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    .line 4127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUpdateMonitorExt:Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->setMonitorCallback(Ljava/util/ArrayList;)V

    return-void
.end method

.method private isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 5

    .line 3156
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result p0

    .line 3157
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 3158
    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v4, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v0, p0, :cond_5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3167
    :cond_1
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v3, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    if-eqz p0, :cond_3

    .line 3172
    iget v0, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-eq v0, v3, :cond_3

    return v2

    .line 3177
    :cond_3
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3179
    instance-of v0, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    .line 3180
    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    iget p0, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;->notifyCode:I

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    iget p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;->notifyCode:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 2

    .line 2622
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFaceDisabled(I)Z
    .locals 2

    .line 1255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1256
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1257
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1259
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFingerprintDisabled(I)Z
    .locals 2

    .line 1247
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1248
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1249
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPrivacyFinger(I)Z
    .locals 1

    .line 4341
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_app_shortcut_finger"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4345
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1

    .line 3435
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_0

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

.method private isTrustDisabled(I)Z
    .locals 0

    .line 1242
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$-GZaxeQabrHzh5b8rORPTQGQVD8(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthStateChanged(I)V

    return-void
.end method

.method public static synthetic lambda$w3Onnt26KGuFqBxQaSJgQd6Y_G4(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method private modeToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "INVALIDATE"

    return-object p0

    :cond_0
    const-string p0, "AUTH_MODE"

    return-object p0

    :cond_1
    const-string p0, "TOUCH_MODE"

    return-object p0

    :cond_2
    const-string p0, "STOP"

    return-object p0

    :cond_3
    const-string p0, "DO_NOTHING"

    return-object p0
.end method

.method private notifyFaceRunningStateChanged()V
    .locals 4

    const/4 v0, 0x0

    .line 1200
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1203
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v2

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 4

    .line 962
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "notifyFingerprintRunningStateChanged"

    .line 963
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 964
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 967
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 971
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 973
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifyStrongAuthStateChanged(I)V
    .locals 3

    .line 1311
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 1314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->onStrongAuthStateChanged(I)V

    .line 1318
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needVerifyPwdAfterManuallyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserLockDown()V

    .line 1324
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1328
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_2

    .line 1331
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 5

    .line 3403
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3404
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 3407
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3409
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sim state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3412
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3415
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 3416
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3419
    :cond_0
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3420
    :goto_1
    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_2
    if-eqz v2, :cond_2

    .line 3425
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->refreshSimState(IILcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_2
    return v2
.end method

.method private removeFingerprintMsg()V
    .locals 2

    .line 3681
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3682
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3683
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    const/16 v0, 0x192

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resolveNeedsSlowUnlockTransition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3

    .line 3238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 3239
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 3240
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 3241
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 3242
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 3243
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 3244
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 3245
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    .line 3246
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 3248
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 574
    :try_start_0
    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setFaceRunningState(I)V
    .locals 4

    .line 1183
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 1185
    :goto_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 1186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "faceRunningState: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_2

    .line 1191
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFaceRunningStateChanged()V

    if-nez v2, :cond_2

    .line 1193
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-virtual {p0, v1, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setFakeAppLayerVisibility(ZI)V

    :cond_2
    return-void
.end method

.method private setFingerprintRunningState(I)V
    .locals 3

    .line 949
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 951
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 952
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerprintRunningState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_2

    .line 957
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    :cond_2
    return-void
.end method

.method private setIgnoreKeyguardShowing(Z)V
    .locals 2

    .line 4228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIgnoreKeyguardShowing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4229
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIgnoreKeyguardShowing:Z

    return-void
.end method

.method private shouldListenForFace()Z
    .locals 6

    .line 2462
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2463
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 2466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldListenForFace, mBouncer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mAuthInterruptActive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mKeyguardIsVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mDeviceInteractive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",!mGoingToSleep="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    xor-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",shouldListenForFaceAssistant="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceAssistant()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",!mSwitchingUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    xor-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",!getUserCanSkipBouncer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",!isFaceDisabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",!mKeyguardGoingAway="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    xor-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mFaceSettingEnabledForUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSettingEnabledForUser:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsPrimaryUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardUpdateMonitor"

    .line 2466
    invoke-static {v5, v4}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceAssistant()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v0, :cond_2

    .line 2473
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSettingEnabledForUser:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 2475
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private shouldListenForFaceAssistant()Z
    .locals 3

    .line 2445
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    .line 2446
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 2447
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private shouldListenForFingerprint()Z
    .locals 1

    .line 2453
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v0, :cond_1

    .line 2455
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprintAssistant()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v0, :cond_3

    .line 2456
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldListenForFingerprintAssistant()Z
    .locals 3

    .line 2439
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 2440
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 2441
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private startListeningForFace()V
    .locals 9

    .line 2513
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 2514
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    return-void

    .line 2518
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 2519
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    :cond_1
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "startListeningForFace()"

    .line 2522
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 2524
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2525
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 2526
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 2528
    :cond_2
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 2529
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V

    const/4 v0, 0x1

    .line 2531
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    :cond_3
    return-void
.end method

.method private startListeningForFingerprint()V
    .locals 9

    .line 2489
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2490
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "startListeningForFingerprint()"

    .line 2497
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 2499
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2500
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 2501
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 2503
    :cond_2
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 2504
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    const/4 v0, 0x1

    .line 2506
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_3
    return-void
.end method

.method private stopListeningForFace()V
    .locals 3

    .line 2602
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2603
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v2, "stopListeningForFace()"

    .line 2608
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    .line 2610
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 2611
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 2612
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 2614
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 2616
    :cond_2
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2617
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    :cond_3
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "stopListeningForFingerprint()"

    .line 2586
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2588
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 2590
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 2592
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 2594
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2595
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_2
    return-void
.end method

.method private touchEven(Z)V
    .locals 2

    .line 4428
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerTouchDown:Z

    .line 4429
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerTouchDown:Z

    .line 4430
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 4432
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object p0

    if-nez p1, :cond_0

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setFakeAppLayerVisibility(ZI)V

    :cond_1
    return-void
.end method

.method private updateAirplaneModeState()V
    .locals 2

    .line 2336
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x149

    .line 2337
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2340
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBiometricListeningState()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "updateBiometricListeningState"

    .line 2344
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2345
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(Z)V

    return-void
.end method

.method private updateBiometricListeningState(Z)V
    .locals 0

    .line 2351
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(Z)V

    .line 2352
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private updateFaceListeningState()V
    .locals 3

    .line 2418
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2425
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2428
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2429
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v0

    .line 2430
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 2431
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    goto :goto_0

    .line 2432
    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 2434
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateFingerprintListeningState(Z)V
    .locals 3

    .line 2358
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2359
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeFingerprintMsg()V

    const/16 v0, 0x190

    if-eqz p1, :cond_0

    .line 2361
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIgnoreKeyguardShowing(Z)V

    .line 2362
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2363
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 2364
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2366
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    .line 2374
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x150

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 2377
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2378
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result p1

    .line 2379
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    .line 2382
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 2384
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateLogoutEnabled()V
    .locals 2

    .line 3540
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 3541
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v0

    .line 3542
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    if-eq v1, v0, :cond_1

    .line 3543
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    const/4 v0, 0x0

    .line 3544
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3545
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 3547
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLogoutEnabledChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .line 2627
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$15;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 2639
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 2640
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 2639
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2645
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 2646
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 2647
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 2648
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v0, :cond_0

    .line 2649
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public awakenFromDream()V
    .locals 1

    .line 744
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz p0, :cond_0

    .line 746
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "Unable to awaken from dream"

    .line 748
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public cancelFingerprint(Ljava/lang/String;)V
    .locals 1

    .line 3675
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeFingerprintMsg()V

    .line 3676
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    const/16 v0, 0x192

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 3677
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelFingerprint for reason : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearBiometricRecognized()V
    .locals 2

    .line 3311
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Landroid/app/trust/TrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 3314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Landroid/app/trust/TrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 3317
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 1

    .line 2744
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x139

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDreamingStarted()V
    .locals 3

    .line 3487
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDreamingStopped()V
    .locals 2

    .line 3491
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0x14d

    invoke-virtual {p0, v1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFinishedGoingToSleep(I)V
    .locals 2

    .line 3462
    monitor-enter p0

    const/4 v0, 0x0

    .line 3463
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 3464
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x140

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 3464
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispatchFinishedWakingUp()V
    .locals 1

    .line 4170
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x154

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchScreenTurnedOff()V
    .locals 1

    .line 3480
    monitor-enter p0

    const/4 v0, 0x0

    .line 3481
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 3482
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3483
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 3482
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    .line 3469
    monitor-enter p0

    const/4 v0, 0x1

    .line 3470
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 3471
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3474
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDeviceSleeping:Z

    .line 3476
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 3471
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 2

    const/4 v0, 0x1

    .line 3456
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDeviceSleeping:Z

    .line 3458
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x141

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 1

    .line 3447
    monitor-enter p0

    const/4 v0, 0x1

    .line 3448
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 3449
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3450
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 3449
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    const-string p1, "KeyguardUpdateMonitor state:"

    .line 3590
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  SIM States:"

    .line 3591
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "    "

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "  Subs:"

    .line 3595
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3597
    :goto_1
    iget-object p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 3598
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "  Service states:"

    .line 3601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 3603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3605
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const-string p3, "    trustManaged="

    const-string v0, "    strongAuthFlags="

    const-string v1, "    possible="

    const-string v2, "    disabled(DPM)="

    const-string v3, "    authSinceBoot="

    const-string v4, "    auth\'d="

    const-string v5, "    allowed="

    const-string v6, ")"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3606
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 3607
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v7, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v7

    .line 3608
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Fingerprint state (user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3611
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3613
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3615
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    listening: actual="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " expected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3616
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3615
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3620
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3621
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 3622
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v7, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v7

    .line 3623
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Face authentication state (user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3624
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3627
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3626
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    enabledByUser="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSettingEnabledForUser:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    .locals 0

    .line 3441
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    return-object p0
.end method

.method public getFaceFailedAttempts()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 4257
    new-instance v0, Lcom/color/compat/hardware/face/FaceManagerNative;

    invoke-direct {v0}, Lcom/color/compat/hardware/face/FaceManagerNative;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/color/compat/hardware/face/FaceManagerNative;->getFailedAttempts(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getFaceLockoutAttemptDeadline()J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 4262
    new-instance v0, Lcom/color/compat/hardware/face/FaceManagerNative;

    invoke-direct {v0}, Lcom/color/compat/hardware/face/FaceManagerNative;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/color/compat/hardware/face/FaceManagerNative;->getLockoutAttemptDeadline(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFpFailedAttempts()I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 4241
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative;->getFailedAttempts(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result p0

    return p0
.end method

.method public getFpLockoutAttemptDeadline()J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 4246
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative;->getLockoutAttemptDeadline(Landroid/hardware/fingerprint/FingerprintManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;
    .locals 0

    .line 4131
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUpdateMonitorExt:Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    return-object p0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 4147
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 7

    const/4 v0, 0x0

    .line 3508
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    const v3, 0x7fffffff

    .line 3511
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3512
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 3513
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 3514
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    .line 3515
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v6

    if-ne p1, v6, :cond_0

    if-le v3, v5, :cond_0

    move v2, v4

    move v3, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getPhoneState()I
    .locals 0

    .line 4292
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return p0
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .locals 0

    .line 3307
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    return-object p0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .line 3339
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3340
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p0

    .line 3342
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p0
.end method

.method public getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 0

    .line 1307
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object p0
.end method

.method public getSubscriptionInfo(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const-string p1, "KeyguardUpdateMonitor"

    const-string v1, "update SubscriptionInfo from SubscriptionManager"

    .line 669
    invoke-static {p1, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    .line 673
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0

    .line 675
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 677
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    return-object p0
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    const/4 v0, 0x0

    .line 3524
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    .line 3525
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3526
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 3527
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrustManager()Landroid/app/trust/TrustManager;
    .locals 0

    .line 4151
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method public getUserCanSkipBouncer(I)Z
    .locals 1

    .line 1264
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

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

.method public getUserHasTrust(I)Z
    .locals 2

    .line 1270
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1271
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1272
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "KeyguardUpdateMonitor"

    const-string p1, "getUserHasTrust, in children mode"

    .line 1273
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1277
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUserUnlockedWithBiometric(I)Z
    .locals 3

    .line 1284
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    .line 1285
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 1286
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method protected handleFinishedGoingToSleep(I)V
    .locals 3

    const/4 v0, 0x0

    .line 2094
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 2095
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2097
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 2099
    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2102
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public handleFinishedWakingUp()V
    .locals 1

    const/4 v0, 0x1

    .line 4166
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasWakingUp:Z

    return-void
.end method

.method handleServiceStateChange(ILandroid/telephony/ServiceState;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleServiceStateChange(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string p1, "invalid subId in handleServiceStateChange()"

    .line 3008
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3014
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 3015
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz p1, :cond_0

    .line 3017
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 3024
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 3027
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3029
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 3030
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_3

    .line 3032
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 3033
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onServiceStateChanged(ILandroid/telephony/ServiceState;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2934
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimStateChange(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const-string v0, "invalid subId in handleSimStateChange()"

    .line 2942
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v0, :cond_2

    .line 2946
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 2950
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2953
    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v4, p2, :cond_0

    .line 2954
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    .line 2957
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v0, :cond_3

    .line 2958
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    move v0, v2

    .line 2964
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-nez v1, :cond_5

    .line 2967
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v1, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 2968
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2971
    :cond_5
    iget-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, p3, :cond_7

    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-ne v4, p1, :cond_7

    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-eq v4, p2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    .line 2972
    :cond_7
    :goto_3
    iput-object p3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2973
    iput p1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 2974
    iput p2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 2978
    :goto_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->handleSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    if-nez v3, :cond_8

    if-eqz v0, :cond_a

    .line 2980
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v0, :cond_a

    .line 2981
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 2982
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_9

    .line 2984
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method protected handleStartedGoingToSleep(I)V
    .locals 4

    .line 2048
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2050
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 2053
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->setWakeupReason(Ljava/lang/String;)V

    goto :goto_0

    .line 2055
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2058
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 2060
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v3, :cond_2

    .line 2062
    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 2065
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 2069
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2070
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(Z)V

    .line 2075
    :cond_4
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2076
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasWakingUp:Z

    .line 2082
    :cond_5
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2083
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQsExpanded:Z

    .line 2084
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncerShowImmediately:Z

    .line 2085
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowMagazine:Z

    .line 2086
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockShade:Z

    .line 2087
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mExeDismiss:Z

    .line 2088
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAffordanceSwiping:Z

    :cond_6
    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 5

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardUpdateMonitor#handleStartedWakingUp"

    .line 2023
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2028
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2029
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    goto :goto_0

    .line 2030
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isTouchDownNow()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "avoid flash fingerprint icon"

    .line 2031
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFingerprint(Ljava/lang/String;)V

    .line 2033
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 2035
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v4, :cond_2

    .line 2037
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2040
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public hasBootCompleted()Z
    .locals 0

    .line 2766
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return p0
.end method

.method public hasLockscreenWallpaper()Z
    .locals 0

    .line 2676
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    return p0
.end method

.method public isBiometricAuthenticationSucceeded()Z
    .locals 3

    .line 4287
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 4288
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isBouncer()Z
    .locals 0

    .line 4103
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 3495
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    return p0
.end method

.method public isDeviceProvisioned()Z
    .locals 0

    .line 3303
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p0
.end method

.method public isDeviceSleeping()Z
    .locals 0

    .line 4275
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDeviceSleeping:Z

    return p0
.end method

.method public isDreaming()Z
    .locals 0

    .line 737
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    return p0
.end method

.method public isFaceAuthFailed()Z
    .locals 2

    .line 4115
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public isFaceAuthSucceed()Z
    .locals 2

    .line 4107
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public isFaceDetectionRunning()Z
    .locals 1

    .line 1235
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFaceUnlockRunning(I)Z
    .locals 0

    .line 1221
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isFingerTouchDownNow()Z
    .locals 0

    .line 4424
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerTouchDown:Z

    return p0
.end method

.method public isFingerprintAuthDetecting()Z
    .locals 1

    .line 3658
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthDetecting:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isFingerprintAuthSucceed()Z
    .locals 2

    .line 4111
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 1

    .line 1227
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthDetecting()Z

    move-result p0

    return p0

    .line 1231
    :cond_0
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoingToSleep()Z
    .locals 0

    .line 3499
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    return p0
.end method

.method public isHasWakingUp()Z
    .locals 0

    .line 4270
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasWakingUp:Z

    return p0
.end method

.method public isIgnoreKeyguardShowing()Z
    .locals 0

    .line 4233
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIgnoreKeyguardShowing:Z

    return p0
.end method

.method public isKeyguardGoingAway()Z
    .locals 0

    .line 4135
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    return p0
.end method

.method public isKeyguardOccluded()Z
    .locals 0

    .line 3666
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 0

    .line 4221
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    return p0
.end method

.method public isKeyguardVisible()Z
    .locals 0

    .line 3039
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return p0
.end method

.method public isLogoutEnabled()Z
    .locals 0

    .line 3536
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    return p0
.end method

.method public isMagazineShown()Z
    .locals 0

    .line 4296
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowMagazine:Z

    return p0
.end method

.method public isOOS()Z
    .locals 9

    .line 3367
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    const-string v5, "KeyguardUpdateMonitor"

    if-ge v3, v0, :cond_4

    .line 3370
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3371
    array-length v7, v6

    if-lt v7, v1, :cond_3

    .line 3372
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slot id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " subId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ServiceState;

    if-eqz v6, :cond_2

    .line 3375
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v2

    .line 3377
    :cond_0
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 3378
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    move v4, v2

    .line 3381
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is emergency: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "voice state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v6, "state is NULL"

    .line 3385
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3390
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is Emergency supported: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public isOffCallingState()Z
    .locals 1

    .line 4096
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    .line 1337
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return p0
.end method

.method public isShowFpWhenBouncer()Z
    .locals 0

    .line 4266
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowFpWhenBouncer:Z

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 3

    const/4 v0, 0x0

    .line 3332
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 3333
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isSimPinVoiceSecure()Z
    .locals 0

    .line 3323
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    return p0
.end method

.method public isSkippedCameraOccupiedError()Z
    .locals 2

    .line 4375
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedError:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedRetryCount:I

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSwitchingUser()Z
    .locals 0

    .line 3226
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return p0
.end method

.method public isUnlockWithFacePossible(I)Z
    .locals 3

    .line 2567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUnlockWithFacePossible, mSwitchingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",UserCanSkipBouncer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isFaceDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsPrimaryUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    .line 2567
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2571
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 2572
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 2573
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2575
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object p0

    .line 2576
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->setIsUnExecuteBySkipBouncer(Z)V

    if-eqz p1, :cond_1

    .line 2577
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->canExecuteFaceUnlock()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :cond_2
    return p1
.end method

.method public isUnlockWithFingerprintPossible(I)Z
    .locals 1

    .line 2547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2548
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockingWithBiometricAllowed()Z
    .locals 0

    .line 1294
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed()Z

    move-result p0

    return p0
.end method

.method public isUnlockingWithBiometricsPossible(I)Z
    .locals 1

    .line 2543
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

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

.method public isUserInLockdown(I)Z
    .locals 0

    .line 1298
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserUnlock()Z
    .locals 1

    .line 4122
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$handleFingerprintAcquired$1$KeyguardUpdateMonitor()V
    .locals 4

    .line 812
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpFailedAttempts()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const v3, 0x7f110490

    .line 813
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 812
    invoke-static {v0, v1, v2, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->collectDataOfFingerprintUnlockFailed(Landroid/content/Context;IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$handleFingerprintHelp$2$KeyguardUpdateMonitor()V
    .locals 4

    .line 861
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpFailedAttempts()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const v3, 0x7f110491

    .line 862
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 861
    invoke-static {v0, v1, v2, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->collectDataOfFingerprintUnlockFailed(Landroid/content/Context;IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$new$0$KeyguardUpdateMonitor()V
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrying face after camera occupied, attempt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCameraOccupiedRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    return-void
.end method

.method public needVerifyPwdAfterManuallyLocked()Z
    .locals 4

    .line 4387
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4390
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v2, -0x2

    const-string v3, "manually_lock_toggle"

    invoke-static {p0, v3, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public needsSlowUnlockTransition()Z
    .locals 0

    .line 1303
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return p0
.end method

.method public onAuthInterruptDetected(Z)V
    .locals 2

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthInterruptDetected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2402
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    .line 2403
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public onCombineUnlockFail()V
    .locals 2

    .line 4320
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4323
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingFpFail:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4326
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingFpFail:Z

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "FingerprintManager onAuthenticationFailed, onCombineUnlockFail"

    .line 4327
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 4328
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockStatistic;->collectDataOfCombineUnlockResult(Landroid/content/Context;I)V

    .line 4329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$19;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$19;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFaceAuthenticated(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x8

    const-string v2, "KeyGuardUpdateMonitor#onFaceAuthenticated"

    .line 981
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 983
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 984
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v2, p1, v3}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    const/4 v2, 0x0

    .line 987
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 990
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "onFaceAuthenticated"

    .line 993
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFingerprint(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 995
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    .line 996
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 999
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1000
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v4, :cond_2

    .line 1002
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v4, p1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1007
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x150

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1011
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1013
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method protected onFingerprintAuthenticated(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x8

    const-string v2, "KeyGuardUpdateMonitor#onFingerPrintAuthenticated"

    .line 755
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 757
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v2, p1, v3}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 766
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 767
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 770
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 771
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v4, :cond_2

    .line 773
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v4, p1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 782
    :cond_3
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "onFingerprintAuthenticated"

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFingerprint(Ljava/lang/String;)V

    goto :goto_1

    .line 785
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x150

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 791
    :goto_1
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 793
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 3048
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 3049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 3053
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->handleKeyguardVisibilityChanged(Z)V

    const/4 v0, 0x0

    .line 3055
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3056
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 3058
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3061
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 3064
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasWakingUp:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 3065
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    :cond_2
    return-void
.end method

.method public onLockIconPressed()V
    .locals 3

    const/4 v0, 0x1

    .line 2483
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    .line 2484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2485
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public onTrustChanged(ZII)V
    .locals 2

    .line 583
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrustChanged enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 587
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 592
    invoke-virtual {v1, p3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustGrantedWithFlags(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    goto :goto_1

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .locals 0

    .line 610
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 1

    .line 682
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 683
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 p1, 0x0

    .line 685
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3

    .line 3210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 3211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3213
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3214
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 3215
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3220
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3221
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 3222
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 3195
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 3196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** unregister callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3198
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 3199
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 3291
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x13e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3293
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 3294
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    :goto_0
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 2

    .line 3276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportSimUnlocked(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 3278
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public requestFaceAuth()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "requestFaceAuth()"

    .line 2411
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public resetBiometricLockout()V
    .locals 2

    .line 4280
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 4281
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 4282
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/BiometricManager;->resetLockout([B)V

    :cond_0
    return-void
.end method

.method public rmStatusBarStateController(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 2820
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 2

    .line 3260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendKeyguardBouncerChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x142

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 3262
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 3263
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendKeyguardReset()V
    .locals 1

    .line 3253
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x138

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendMagazineShowing(Z)V
    .locals 2

    .line 4177
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowMagazine:Z

    if-eq v0, p1, :cond_0

    .line 4178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMagazineShowing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4179
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncerShowImmediately:Z

    .line 4180
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowMagazine:Z

    .line 4181
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 4182
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowMagazine:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4183
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    :cond_0
    return-void
.end method

.method public setAffordance(Z)V
    .locals 2

    .line 4208
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAffordanceSwiping:Z

    if-eq v0, p1, :cond_0

    .line 4209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAffordance("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAffordanceSwiping:Z

    .line 4211
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    return-void
.end method

.method setAssistantVisible(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1351
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1352
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public setExeDismiss(Z)V
    .locals 2

    .line 4189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExeDismiss("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mExeDismiss:Z

    return-void
.end method

.method public setFingerprintAuthDetecting(Z)V
    .locals 1

    .line 3662
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthDetecting:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setFpFailPendingState(Z)V
    .locals 0

    .line 4316
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingFpFail:Z

    return-void
.end method

.method public setHasLockscreenWallpaper(Z)V
    .locals 2

    .line 2660
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2661
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    if-eq p1, v0, :cond_1

    .line 2662
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    .line 2663
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2664
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2666
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onHasLockscreenWallpaperChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 2

    .line 698
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 699
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    if-eqz p1, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needVerifyPwdAfterManuallyLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 703
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x2

    const-string v1, "manually_lock_toggle"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 714
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAffordanceSwiping:Z

    .line 716
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardOccluded  Occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->setKeyguardOccluded(Z)V

    .line 719
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 723
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthFailed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz p1, :cond_0

    .line 725
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 2

    .line 4194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardShowing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4197
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasResetPwd:Z

    .line 4200
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPasswordLockCheckedSuccess(Z)V

    goto :goto_0

    .line 4203
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIgnoreKeyguardShowing(Z)V

    :goto_0
    return-void
.end method

.method public setPasswordLockCheckedSuccess(Z)V
    .locals 0

    .line 4440
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPasswordSuccessUnLock:Z

    return-void
.end method

.method public setStatusBarStateController(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 2816
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 0

    .line 3231
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 3233
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shouldBiometricLockoutAttemptDeadline()Z
    .locals 4

    .line 4250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4251
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpLockoutAttemptDeadline()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 4252
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceLockoutAttemptDeadline()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

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

.method public startFingerprintForAuthenticate()V
    .locals 1

    .line 3670
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeFingerprintMsg()V

    .line 3671
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintHandler:Landroid/os/Handler;

    const/16 v0, 0x191

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startListeningForFaceUnlock(I)V
    .locals 3

    .line 4003
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4004
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceHandler:Landroid/os/Handler;

    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4005
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 4006
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 4007
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopListeningForFaceUnlock(Z)V
    .locals 2

    .line 4015
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4016
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceHandler:Landroid/os/Handler;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4017
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 4018
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4019
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateFingerprintListeningState()V
    .locals 1

    const/4 v0, 0x0

    .line 2390
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(Z)V

    return-void
.end method

.method public updateIsShowFpWhenBouncer(Z)V
    .locals 2

    .line 4142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIsShowFpWhenBouncer(), isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowFpWhenBouncer:Z

    return-void
.end method

.method updateTelephonyCapable(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2917
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2920
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    .line 2921
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2922
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    .line 2924
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
