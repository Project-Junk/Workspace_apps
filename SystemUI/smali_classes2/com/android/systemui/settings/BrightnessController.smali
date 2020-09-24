.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final MSG_ATTACH_LISTENER:I = 0x3

.field private static final MSG_DETACH_LISTENER:I = 0x4

.field private static final MSG_SET_CHECKED:I = 0x2

.field private static final MSG_UPDATE_SLIDER:I = 0x1

.field private static final MSG_VR_MODE_CHANGED:I = 0x5

.field private static final SLIDER_ANIMATION_DURATION:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "StatusBar.BrightnessController"


# instance fields
.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
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

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 220
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 228
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 259
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 261
    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/16 v0, 0x3ff

    invoke-interface {p2, v0}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 262
    new-instance p2, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 263
    new-instance p2, Lcom/android/systemui/settings/BrightnessController$7;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 270
    new-instance p2, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 272
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 273
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 274
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 275
    invoke-virtual {p2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:I

    .line 276
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 277
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    .line 278
    invoke-virtual {p2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:I

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_bool_config_automatic_brightness_available:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 282
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string p1, "vrmanager"

    .line 283
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/BrightnessController;IZ)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/BrightnessController;->updateSlider(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method private animateSliderTo(I)V
    .locals 4

    .line 438
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 441
    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    .line 446
    new-array v0, v0, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v3}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v3

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 447
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$T5g_am3jK-it6CD1eLLpr05aFxc;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$T5g_am3jK-it6CD1eLLpr05aFxc;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 453
    invoke-interface {v0}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v0

    sub-int/2addr v0, p1

    .line 452
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0xbb8

    div-int/lit16 p1, p1, 0x3ff

    int-to-long v0, p1

    .line 454
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 455
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setBrightness(I)V
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    return-void
.end method

.method private setMode(I)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result p0

    const-string v1, "screen_brightness_mode"

    .line 399
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateSlider(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 419
    iget p2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 420
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    goto :goto_0

    .line 422
    :cond_0
    iget p2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 423
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 425
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v1}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v1

    invoke-static {v1, p2, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result v1

    if-ne p1, v1, :cond_1

    return-void

    .line 433
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result p1

    .line 434
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->animateSliderTo(I)V

    return-void
.end method

.method private updateVrMode(Z)V
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    .line 411
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkRestrictionAndSetEnabled()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$9;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$animateSliderTo$0$BrightnessController(Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    .line 449
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    const/4 p1, 0x0

    .line 450
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V
    .locals 2

    .line 340
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz p1, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 351
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x1f2

    .line 353
    iget p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 354
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    const-string v1, "screen_brightness_for_vr"

    goto :goto_1

    .line 357
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz p1, :cond_3

    const/16 p1, 0xdb

    goto :goto_0

    :cond_3
    const/16 p1, 0xda

    .line 360
    :goto_0
    iget p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 361
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    const-string v1, "screen_brightness"

    .line 365
    :goto_1
    invoke-static {p4, p3, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result p3

    if-eqz p5, :cond_4

    .line 368
    iget-object p4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {p4, p1, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 371
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    if-nez p2, :cond_5

    .line 373
    new-instance p1, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {p1, p0, v1, p3}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 381
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 382
    invoke-interface {p1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public registerCallbacks()V
    .locals 3

    .line 301
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to register VR mode state listener: "

    .line 310
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return-void
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;)Z
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unregisterCallbacks()V
    .locals 3

    .line 320
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to unregister VR mode state listener: "

    .line 328
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 334
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    return-void
.end method
