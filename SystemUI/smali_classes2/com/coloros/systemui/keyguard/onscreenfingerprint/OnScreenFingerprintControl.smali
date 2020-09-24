.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;
.super Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;
.source "OnScreenFingerprintControl.java"


# static fields
.field public static final BINDER_TRANSACT_INVALIDATED_CODE:I = -0x80000000

.field private static final CODE_CONTROL_SF_FP_HIGHLIGHT:I = 0x4e25

.field private static final COLOR_MODE_NONE:I = -0x1

.field private static final COLOR_MODE_NORMAL:I = 0x0

.field private static final COLOR_MODE_SOFT:I = 0x1

.field private static final DATA_CODE_DISABLE_SF_FP_HIGHLIGHT:I = 0x1

.field private static final DATA_CODE_ENABLE_SF_FP_HIGHLIGHT:I = 0x0

.field private static final DREAMING_DELAY_MTK_PLATFORM:I = 0x3e8

.field private static final DREAMING_DELAY_TP_PSENSOR:I = 0x1f4

.field private static final ENTER_FP_PAGE_URI:Ljava/lang/String; = "enter_finger_print_lock_page"

.field private static final FP_ICON_FAIL_OR_ERROR:I = 0x5

.field private static final FP_ICON_HIDE:I = 0x0

.field private static final FP_ICON_SHOW:I = 0x1

.field private static final FP_ICON_SHOW_WHILE_ENROLL:I = 0x4

.field private static final FP_ICON_TOUCH_DOWN:I = 0x2

.field private static final FP_ICON_TOUCH_UP:I = 0x3

.field private static final GESTURE_HOT_AREA_HEIGHT:I = 0xe6

.field private static final HBM_SYSFS_PATH:Ljava/lang/String; = "/sys/kernel/oppo_display/dimlayer_hbm"

.field private static final KEYGUARD_TO_SURFACEFLINGER_COMMAND:I = 0x4e2a

.field private static final KEY_OPPO_COLOR_MODE:Ljava/lang/String; = "oppo_color_mode"

.field private static final ONE_THIRD_RATE_PRESSEDICON:F = 0.33333334f

.field public static final ON_SCREEN_FINGERPRINT_ANIM_ICON_HEIGHT:I = 0x438

.field public static final ON_SCREEN_FINGERPRINT_ANIM_ICON_WIDTH:I = 0x438

.field public static final ON_SCREEN_FINGERPRINT_ICON_MARGIN_BOTTOM_DEFAULT:I = 0x116

.field public static final ON_SCREEN_FINGERPRINT_ICON_SIZE:I = 0xae

.field public static final ON_SCREEN_FINGERPRINT_PRESSED_ICON_SIZE_GOODIX:I = 0xc4

.field public static final ON_SCREEN_FINGERPRINT_PRESSED_ICON_SIZE_SILEAD:I = 0xae

.field private static final TAG:Ljava/lang/String; = "OnScreenFingerprintControl"

.field private static final TALK_TO_SF_CODE_21003:I = 0x520b

.field public static final TYPE_SYSTEM_ONSCREEN_FINGERPRINT:I = 0x90b

.field private static sColorMode:I = -0x1

.field private static sDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer; = null

.field private static volatile sHighlightEnable:Z = false

.field private static sHighlightVisibilityRunnable:Ljava/lang/Runnable; = null

.field public static sIconMarginBottom:I = 0x116

.field private static sInstanace:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl; = null

.field public static sPressIconSize:I = 0xae

.field private static volatile sPressedIcon:Landroid/widget/ImageView;


# instance fields
.field private mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

.field private mDoNotShowPressedAnimation:Z

.field private mDreamingRunnable:Ljava/lang/Runnable;

.field private mFingerprintListenerCallback:Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

.field private mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasAdjustForFpIcon:Z

.field private mHasHideIconByQs:Z

.field private mOSFingerprintAnimType:Ljava/lang/String;

.field private mOSFingerprintTouchSound:I

.field private mShow:Z

.field private mTouchRunnable:Ljava/lang/Runnable;

.field private mTouchable:Z

.field private volatile mVisibilityRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 224
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$1;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mDreamingRunnable:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFingerprintListenerCallback:Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    const-string v0, "OnScreenFingerprintControl"

    const-string v1, "OnScreenFingerprintControl init start"

    .line 225
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fingerprint"

    .line 226
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 228
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "persist.vendor.fingerprint.fp_id"

    .line 230
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "G_"

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    iput v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFingprintHardwareModuleID:I

    .line 236
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fp_id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get fp_id exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_1
    const-string v2, "persist.vendor.fingerprint.optical.iconsize"

    .line 241
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iconsize ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get iconsize exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFingprintHardwareModuleID:I

    if-ne v2, v1, :cond_2

    const/16 v1, 0xc4

    .line 247
    sput v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I

    goto :goto_2

    :cond_2
    const/16 v1, 0xae

    .line 249
    sput v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I

    :goto_2
    :try_start_2
    const-string v1, "persist.vendor.fingerprint.optical.iconlocation"

    .line 253
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconlocation ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get iconlocation exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_3
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->colorModeInit(Landroid/content/Context;)V

    .line 262
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->registerOpticalFpListener()V

    .line 266
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->setOnScreenFingerprintControl(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    .line 270
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    const-string p0, "OnScreenFingerprintControl init end"

    .line 272
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mDoNotShowPressedAnimation:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mDoNotShowPressedAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->hideFingerprintIcon()V

    return-void
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOSFingerprintTouchSound:I

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mHasHideIconByQs:Z

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->showFingerprintIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    return-object p0
.end method

.method static synthetic access$500()Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;
    .locals 1

    .line 58
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/ImageView;
    .locals 1

    .line 58
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->initWindow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    return-object p0
.end method

.method private static colorModeControl(Landroid/content/Context;Z)V
    .locals 5

    .line 498
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportColorMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "prefs_onscreen_fingerprint"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "oppo_color_mode"

    if-eqz p1, :cond_1

    .line 503
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sColorMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    :try_start_2
    sput v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sColorMode:I

    .line 507
    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 508
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sColorMode:I

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    sget p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sColorMode:I

    if-ne p1, v3, :cond_3

    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 513
    :cond_1
    sget p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sColorMode:I

    if-ne p1, v3, :cond_2

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 517
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    :goto_1
    return-void
.end method

.method private colorModeInit(Landroid/content/Context;)V
    .locals 2

    .line 486
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportColorMode()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const-string v0, "prefs_onscreen_fingerprint"

    .line 489
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "oppo_color_mode"

    .line 490
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sColorMode:I

    .line 491
    sget p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sColorMode:I

    if-eq p0, v0, :cond_1

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sColorMode:I

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public static composeFpIconLayerImpl(Z)V
    .locals 3

    :try_start_0
    const-string v0, "OnScreenFingerprintControl"

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeFpIconLayerImpl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 841
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-string v1, "OnScreenFingerprintIcon"

    .line 842
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 843
    :goto_0
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/16 p0, 0x520b

    .line 844
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->talkToSurfaceFlinger(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private execInMainThreadOrFirst(Ljava/lang/Runnable;)V
    .locals 0

    .line 918
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-nez p0, :cond_0

    .line 919
    sget-object p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 921
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->execInMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private getDreamingDelay()I
    .locals 1

    .line 686
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 688
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPlatformMtk()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x3e8

    return p0

    .line 690
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isTpProximitySensor()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1f4

    return p0

    :cond_2
    return v0
.end method

.method public static getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;
    .locals 1

    .line 217
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sInstanace:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sInstanace:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    .line 220
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sInstanace:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    return-object p0
.end method

.method private static hbmControl(Z)V
    .locals 4

    .line 538
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isDisableAppDimLayer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 545
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/kernel/oppo_display/dimlayer_hbm"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 548
    :try_start_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 556
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    :goto_3
    :try_start_3
    const-string v1, "OnScreenFingerprintControl"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hbmControl exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_2

    :catch_2
    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_4

    .line 556
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 561
    :catch_3
    :cond_4
    throw p0
.end method

.method private hideFingerprintIcon()V
    .locals 2

    .line 597
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 601
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x1f4

    .line 606
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->requestDraw(I)V

    .line 607
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    .line 618
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->execInMainThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 619
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShow:Z

    .line 620
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchDown:Z

    .line 621
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintControl$0DUDdR3gRcWmgMBHizBG8ih5Ofc;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintControl$0DUDdR3gRcWmgMBHizBG8ih5Ofc;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static highlightControl(Landroid/content/Context;Z)V
    .locals 3

    .line 442
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 446
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->isFingerprintUnlockEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_1

    move p1, v2

    .line 452
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isHighlightEnable()Z

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    .line 455
    :cond_2
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->setHighlightEnable(Z)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "highlightControl, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnScreenFingerprintControl"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHighlightVisibilityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 459
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHighlightVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    :cond_3
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$4;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$4;-><init>(Z)V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHighlightVisibilityRunnable:Ljava/lang/Runnable;

    .line 475
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHighlightVisibilityRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->execInMainThread(Ljava/lang/Runnable;)V

    .line 476
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isDisableAppDimLayer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->hbmControl(Z)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const/4 v2, 0x0

    :cond_5
    const/16 v0, 0x4e25

    .line 480
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->talkToSurfaceFlinger(II)V

    .line 482
    :goto_0
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->colorModeControl(Landroid/content/Context;Z)V

    return-void
.end method

.method private initWindow()Z
    .locals 12

    .line 295
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "OnScreenFingerprintControl"

    const-string v2, "init window"

    .line 298
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->registerOberver()V

    .line 301
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isDisableAppDimLayer()Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x90b

    const/4 v5, -0x2

    const/16 v6, 0x8

    if-nez v2, :cond_2

    .line 302
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 303
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 304
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v7, "OnScreenFingerprintDimLayer"

    .line 305
    invoke-virtual {v2, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v7, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    .line 307
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v7, v6

    or-int/lit8 v7, v7, 0x10

    or-int/lit16 v7, v7, 0x100

    or-int/lit16 v7, v7, 0x400

    const/high16 v8, 0x1000000

    or-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 313
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 316
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 318
    sget-object v7, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    invoke-static {}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isHighlightEnable()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    invoke-virtual {v7, v8}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->setVisibility(I)V

    .line 319
    iget-object v7, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mWindowMgr:Landroid/view/WindowManager;

    sget-object v8, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    invoke-interface {v7, v8, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v7, 0x438

    .line 323
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 324
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 325
    sget v7, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I

    sget v8, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I

    div-int/lit8 v9, v8, 0x2

    sub-int/2addr v7, v9

    rsub-int v7, v7, 0x21c

    add-int/lit8 v7, v7, -0x57

    neg-int v7, v7

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x57

    add-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v7, 0x51

    .line 328
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 329
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    .line 330
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 331
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 332
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 333
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v9, v6

    or-int/lit8 v9, v9, 0x10

    or-int/lit16 v9, v9, 0x200

    or-int/lit16 v9, v9, 0x100

    or-int/lit8 v9, v9, 0x20

    or-int/lit16 v9, v9, 0x400

    const/high16 v10, 0x40000

    or-int/2addr v9, v10

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 341
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v10, -0x1000001

    and-int/2addr v9, v10

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v9, "OnScreenFingerprintIcon"

    .line 342
    invoke-virtual {v2, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 344
    new-instance v9, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    iget-object v10, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    .line 345
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-virtual {v9, v6}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setVisibility(I)V

    .line 346
    sget v9, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I

    const/16 v10, 0xae

    if-ge v9, v10, :cond_3

    const-string v9, "Keyguard"

    const-string v10, "fingerprint icon is bigger than pressed icon!"

    .line 347
    invoke-static {v9, v0, v10}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    sget v10, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I

    int-to-float v10, v10

    const/high16 v11, 0x432e0000    # 174.0f

    div-float v10, v11, v10

    invoke-virtual {v9, v10}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setScaleX(F)V

    .line 349
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    sget v10, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I

    int-to-float v10, v10

    div-float/2addr v11, v10

    invoke-virtual {v9, v11}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setScaleY(F)V

    .line 351
    :cond_3
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mWindowMgr:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-interface {v9, v10, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 355
    sget v9, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 356
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 357
    sget v10, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v10, v9

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 358
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 359
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 360
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 361
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 362
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 363
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v4, v6

    or-int/lit8 v4, v4, 0x10

    or-int/lit16 v4, v4, 0x100

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v4, "OnScreenFingerprintPressedIcon"

    .line 368
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    :try_start_0
    const-string v4, "persist.vendor.fingerprint.optical.iconnumber"

    .line 371
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iconnumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    .line 373
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080bc6

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    const-string v0, "2"

    .line 375
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080bc7

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const-string v0, "3"

    .line 377
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 378
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080bc5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    const-string v0, "4"

    .line 379
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 380
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080bc8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_7
    const-string v0, "5"

    .line 381
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 382
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080bc9

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    const-string v0, "7"

    .line 383
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 384
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080bca

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 386
    :cond_9
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080bc4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    :catch_0
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080bc4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    :goto_1
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mWindowMgr:Landroid/view/WindowManager;

    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOSFingerprintAnimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->onOSFingerprintAnimSwitchChange(Ljava/lang/String;)V

    return v3
.end method

.method public static declared-synchronized isHighlightEnable()Z
    .locals 2

    const-class v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    monitor-enter v0

    .line 910
    :try_start_0
    sget-boolean v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHighlightEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setHighlightEnable(Z)V
    .locals 1

    const-class v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    monitor-enter v0

    .line 914
    :try_start_0
    sput-boolean p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHighlightEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setValueForNavigationBar(Z)V
    .locals 2

    .line 864
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->shouldNavigationBarAdjustForFingerprintIcon()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "enter_finger_print_lock_page"

    if-eqz p1, :cond_1

    .line 868
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 869
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 870
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mHasAdjustForFpIcon:Z

    goto :goto_0

    .line 873
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mHasAdjustForFpIcon:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 874
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 876
    :cond_2
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mHasAdjustForFpIcon:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private showFingerprintIcon()V
    .locals 2

    .line 574
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 577
    :cond_0
    sget-boolean v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sServiceRequest:Z

    if-nez v0, :cond_1

    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 581
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    :cond_2
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$5;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$5;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 591
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShow:Z

    .line 592
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mVisibilityRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->execInMainThreadOrFirst(Ljava/lang/Runnable;)V

    .line 593
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintControl$ziJ8MQhKxwHGf6IBNiqDuLfsaDA;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintControl$ziJ8MQhKxwHGf6IBNiqDuLfsaDA;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static talkToSurfaceFlinger(II)V
    .locals 2

    .line 526
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 527
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    .line 529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    :cond_0
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->talkToSurfaceFlinger(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public enableAODShowMech()V
    .locals 1

    .line 668
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mScreenTurnedOff:Z

    if-nez v0, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    .line 672
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->isFingerprintUnlockEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShowInScreenOff:Z

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/FingerprintStateHelper;->isLockLater()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 676
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthDetecting()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 679
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mAODShowMech:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->start()V

    goto :goto_0

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodEnableImmediateOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mAODShowMech:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getSpaceForFpIcon()I
    .locals 3

    .line 403
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 404
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mWindowMgr:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 405
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    .line 406
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->isFingerprintUnlockEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    .line 407
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I

    sget v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressIconSize:I

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sub-int v2, p0, v0

    :cond_1
    return v2
.end method

.method public hasDreamingStart()Z
    .locals 1

    .line 736
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getDreamingDelay()I

    move-result v0

    if-lez v0, :cond_0

    .line 737
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->hasDreamingStart()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hideFingerprintIconBySFTemporarily()V
    .locals 1

    .line 428
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x4e2a

    const/high16 v0, -0x80000000

    .line 433
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->talkToSurfaceFlinger(II)V

    return-void
.end method

.method public hideFingerprintIconTemporarily(Ljava/lang/String;)V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFingerprintIconTemporarily for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnScreenFingerprintControl"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative;->hideFingerprintIcon(Landroid/hardware/fingerprint/FingerprintManager;)V

    :cond_0
    const/4 p1, 0x1

    .line 829
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mHasHideIconByQs:Z

    return-void
.end method

.method public synthetic lambda$hideFingerprintIcon$1$OnScreenFingerprintControl()V
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->setValueForNavigationBar(Z)V

    return-void
.end method

.method public synthetic lambda$showFingerprintIcon$0$OnScreenFingerprintControl()V
    .locals 1

    const/4 v0, 0x1

    .line 593
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->setValueForNavigationBar(Z)V

    return-void
.end method

.method public onDreamingStart()V
    .locals 4

    .line 705
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->enableAODShowMech()V

    .line 707
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShowInScreenOff:Z

    if-eqz v0, :cond_2

    .line 711
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getDreamingDelay()I

    move-result v0

    if-lez v0, :cond_1

    .line 713
    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sWorkerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mDreamingRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 715
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mDreamingRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDreamingStop()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mAODShowMech:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->stop()V

    .line 724
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 727
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mDreamingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 728
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShowInScreenOff:Z

    if-eqz v0, :cond_1

    .line 729
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->onDreamingStop()V

    :cond_1
    return-void
.end method

.method protected onOSFingerprintAnimSwitchChange(Ljava/lang/String;)V
    .locals 5

    const-string v0, "anim_"

    const-string v1, "FP style isn\'t following the rules, "

    const-string v2, "OnScreenFingerprintControl"

    .line 789
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOSFingerprintAnimType:Ljava/lang/String;

    const/4 v3, 0x1

    .line 793
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 794
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move p1, v3

    .line 802
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->loadAnimDrawables(I)V

    .line 805
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    const/4 v0, 0x0

    const-string v1, "raw"

    .line 806
    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getAnimConfigIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 807
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOSFingerprintTouchSound:I

    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 751
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onScreenTurnedOff"

    const-string v1, "OnScreenFingerprintControl"

    .line 754
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 755
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mScreenTurnedOff:Z

    .line 756
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShowInScreenOff:Z

    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShowInAOD:Z

    .line 757
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShowInScreenOff:Z

    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mCanRequestDraw:Z

    .line 758
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShowInScreenOff:Z

    if-nez v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFingerprint(Ljava/lang/String;)V

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->hasDreamingStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->enableAODShowMech()V

    .line 765
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->onScreenTurnedOff()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 778
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mAODShowMech:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->stop()V

    const/4 v0, 0x0

    .line 782
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mScreenTurnedOff:Z

    const/4 v0, 0x1

    .line 783
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mCanRequestDraw:Z

    .line 784
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->onScreenTurnedOn()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .line 770
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mAODShowMech:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->stop()V

    .line 774
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->onScreenTurningOn()V

    return-void
.end method

.method public onStartGoingToSleep()V
    .locals 1

    .line 744
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 747
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mHasHideIconByQs:Z

    return-void
.end method

.method public registerOpticalFpListener()V
    .locals 2

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 279
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFingerprintListenerCallback:Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    invoke-static {v0, p0}, Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative;->regsiterOpticalFingerprintListener(Landroid/hardware/fingerprint/FingerprintManager;Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regsiterOpticalFingerprintListener exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnScreenFingerprintControl"

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setInteractive(Z)V
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->setInteractive(Z)V

    return-void
.end method

.method public setPressedIconTouchable(Z)V
    .locals 3

    .line 883
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 886
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTouchable touchable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "OnScreenFingerprintControl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchable:Z

    .line 888
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    .line 891
    :cond_1
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 892
    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_2

    return-void

    .line 895
    :cond_2
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_3

    .line 897
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p1, 0x1

    .line 898
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 900
    :cond_3
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 901
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchDown:Z

    if-nez p1, :cond_4

    const/4 p1, -0x1

    .line 902
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 905
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mWindowMgr:Landroid/view/WindowManager;

    sget-object p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sPressedIcon:Landroid/widget/ImageView;

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setVisibilityInAOD(I)V
    .locals 0

    .line 566
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->setVisibilityInAOD(I)V

    .line 568
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz p1, :cond_0

    .line 569
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShowInAOD:Z

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setVisibilityInAOD(Z)V

    :cond_0
    return-void
.end method

.method public shouldNavigationBarAdjustForFingerprintIcon()Z
    .locals 2

    .line 854
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 857
    :cond_0
    sget p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I

    const/16 v1, 0xe6

    if-ge p0, v1, :cond_1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public showFingerprintIconTemporarily(Ljava/lang/String;)V
    .locals 2

    .line 813
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mHasHideIconByQs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mHasHideIconByQs:Z

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFingerprintIconTemporarily for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnScreenFingerprintControl"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative;->showFingerprintIcon(Landroid/hardware/fingerprint/FingerprintManager;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized touchEvent(Z)V
    .locals 2

    monitor-enter p0

    .line 628
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 629
    monitor-exit p0

    return-void

    .line 631
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mShow:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 632
    monitor-exit p0

    return-void

    .line 634
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 635
    monitor-exit p0

    return-void

    .line 637
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchDown:Z

    .line 638
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchDown:Z

    if-eq v0, p1, :cond_4

    .line 640
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object v0

    if-nez p1, :cond_3

    const/16 v1, 0x1f4

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setFakeAppLayerVisibility(ZI)V

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 644
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 646
    :cond_5
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Z)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchRunnable:Ljava/lang/Runnable;

    .line 664
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mTouchRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->execInMainThreadOrFirst(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateDimLayerAlpha(F)V
    .locals 2

    .line 415
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$3;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
