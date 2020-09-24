.class public Lcom/coloros/systemui/qs/ColorBrightnessController;
.super Ljava/lang/Object;
.source "ColorBrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;,
        Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final CLICK_EVENT_TAG:Ljava/lang/String; = "Brightness_Click"

.field private static final MSG_ATTACH_LISTENER:I = 0x3

.field private static final MSG_DETACH_LISTENER:I = 0x4

.field private static final MSG_SET_CHECKED:I = 0x2

.field private static final MSG_UPDATE_ICON:I = 0x0

.field private static final MSG_UPDATE_SLIDER:I = 0x1

.field private static final MSG_VR_MODE_CHANGED:I = 0x5

.field private static final SLIDER_ANIMATION_DURATION:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "StatusBar.BrightnessController"


# instance fields
.field private mAutoCheck:Landroid/widget/CheckBox;

.field private mAutoCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBrightnessObserver:Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private mControlValueInitialized:Z

.field private final mDefaultBacklight:I

.field private final mDefaultBacklightForVr:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsVrModeEnabled:Z

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMaximumBacklightForVr:I

.field private final mMinimumBacklight:I

.field private final mMinimumBacklightForVr:I

.field private final mMultiBits:Z

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private mUseAnimation:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/CheckBox;)V
    .locals 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$1;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$2;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 203
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$3;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$4;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 247
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController$5;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$5;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 255
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$6;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mHandler:Landroid/os/Handler;

    .line 495
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController$10;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$10;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutoCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 290
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 292
    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/16 v0, 0x3ff

    invoke-interface {p2, v0}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 293
    new-instance p2, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 294
    new-instance p2, Lcom/coloros/systemui/qs/ColorBrightnessController$7;

    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/coloros/systemui/qs/ColorBrightnessController$7;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 301
    new-instance p2, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;

    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mBrightnessObserver:Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;

    .line 303
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 304
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.autobrightctl.animation.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUseAnimation:Z

    .line 307
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.multibits.dimming.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMultiBits:Z

    .line 308
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMultiBits:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/color/compat/os/PowerManagerNative;->getRealMinimumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMinimumBacklight:I

    .line 309
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMultiBits:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/color/compat/os/PowerManagerNative;->getRealMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMaximumBacklight:I

    .line 310
    invoke-virtual {p2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mDefaultBacklight:I

    .line 311
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMinimumBacklightForVr:I

    .line 312
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMaximumBacklightForVr:I

    .line 313
    invoke-virtual {p2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mDefaultBacklightForVr:I

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_bool_config_automatic_brightness_available:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutomaticAvailable:Z

    .line 317
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string p1, "vrmanager"

    .line 318
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 320
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUiHandler:Landroid/os/Handler;

    if-eqz p3, :cond_2

    .line 322
    iput-object p3, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutoCheck:Landroid/widget/CheckBox;

    .line 323
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutoCheck:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutoCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 324
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutoCheck:Landroid/widget/CheckBox;

    new-instance p2, Lcom/coloros/systemui/qs/ColorBrightnessController$8;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$8;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mIsVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/qs/ColorBrightnessController;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mDefaultBacklightForVr:I

    return p0
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/qs/ColorBrightnessController;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMaximumBacklight:I

    return p0
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/qs/ColorBrightnessController;I)I
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->getBrightnessValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/qs/ColorBrightnessController;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMinimumBacklight:I

    return p0
.end method

.method static synthetic access$1502(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->updateIcon(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mBrightnessObserver:Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutomaticAvailable:Z

    return p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutomatic:Z

    return p0
.end method

.method static synthetic access$902(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutomatic:Z

    return p1
.end method

.method private getBrightnessValue(I)I
    .locals 1

    .line 533
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMultiBits:Z

    if-eqz v0, :cond_1

    .line 534
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getBrightness(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 536
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return p1

    .line 541
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getBrightness(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private onChangedWithAnimation(ZI)V
    .locals 2

    .line 480
    iget v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMinimumBacklight:I

    add-int/2addr v0, p2

    .line 481
    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->setBrightness(I)V

    int-to-float v1, v0

    .line 482
    invoke-direct {p0, v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->setBrightnessAdj(F)V

    if-nez p1, :cond_0

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedWithAnimation value "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Statusbar"

    const-string v1, "StatusBar.BrightnessController"

    invoke-static {p2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance p1, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$2_uiP9KXybNIPtu-Pk1gCbaPDUM;

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$2_uiP9KXybNIPtu-Pk1gCbaPDUM;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setBrightness(I)V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    return-void
.end method

.method private setBrightnessAdj(F)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V

    return-void
.end method

.method private setBrightnessValue(I)V
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMultiBits:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setBrightness(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setBrightness(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private updateIcon(Z)V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutoCheck:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 513
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutoCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateVrMode(Z)V
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 468
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mIsVrModeEnabled:Z

    .line 469
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessStateChangeCallback;)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkRestrictionAndSetEnabled()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/ColorBrightnessController$9;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController$9;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onChanged$0$ColorBrightnessController(Ljava/lang/String;I)V
    .locals 1

    .line 441
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public synthetic lambda$onChangedWithAnimation$1$ColorBrightnessController(I)V
    .locals 2

    .line 486
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->setBrightnessValue(I)V

    .line 487
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    int-to-float p1, p1

    const-string v0, "screen_auto_brightness_adj"

    const/4 v1, -0x2

    .line 487
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V
    .locals 2

    .line 393
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mExternalChange:Z

    if-eqz p1, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 400
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mUseAnimation:Z

    if-eqz p1, :cond_2

    if-eqz p5, :cond_1

    const-string p1, "Statusbar"

    const-string p3, "StatusBar.BrightnessController"

    const-string p5, " Brightness Drag Seekbar Stop Brightness_Click"

    .line 402
    invoke-static {p1, p3, p5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/coloros/systemui/qs/ColorBrightnessController;->onChangedWithAnimation(ZI)V

    return-void

    .line 410
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 411
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 419
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mIsVrModeEnabled:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x1f2

    .line 421
    iget p3, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMinimumBacklightForVr:I

    .line 422
    iget v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMaximumBacklightForVr:I

    const-string v1, "screen_brightness_for_vr"

    goto :goto_1

    .line 425
    :cond_4
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mAutomatic:Z

    if-eqz p1, :cond_5

    const/16 p1, 0xdb

    goto :goto_0

    :cond_5
    const/16 p1, 0xda

    .line 428
    :goto_0
    iget p3, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMinimumBacklight:I

    .line 429
    iget v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mMaximumBacklight:I

    const-string v1, "screen_brightness"

    .line 433
    :goto_1
    invoke-static {p4, p3, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result p3

    if-eqz p5, :cond_6

    .line 436
    iget-object p4, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mContext:Landroid/content/Context;

    invoke-static {p4, p1, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 439
    :cond_6
    invoke-direct {p0, p3}, Lcom/coloros/systemui/qs/ColorBrightnessController;->setBrightness(I)V

    if-nez p2, :cond_7

    .line 441
    new-instance p1, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;

    invoke-direct {p1, p0, v1, p3}, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;-><init>(Lcom/coloros/systemui/qs/ColorBrightnessController;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 445
    :cond_7
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessStateChangeCallback;

    .line 446
    invoke-interface {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public registerCallbacks()V
    .locals 3

    .line 352
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 359
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mIsVrModeEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to register VR mode state listener: "

    .line 361
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mListening:Z

    return-void
.end method

.method public removeStateChangedCallback(Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessStateChangeCallback;)Z
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unregisterCallbacks()V
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mListening:Z

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to unregister VR mode state listener: "

    .line 381
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mListening:Z

    .line 387
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController;->mControlValueInitialized:Z

    return-void
.end method
