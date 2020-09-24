.class public Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;
.super Landroid/widget/FrameLayout;
.source "ChargingSiphonAnimLayoutRealme.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;


# static fields
.field public static final CANCEL_WIRED_CHARGING_DELAY:I = 0x1f4

.field private static final NORMAL_TRANSITION_OUT_ANIM_DELAY:I = 0x1f4

.field public static final SCREEN_FINGERPRINT_BOTTOM:I = 0x190

.field public static final SIPHON_ANIM_LAYOUT_HEIGHT_OFFSET:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "ChargingSiphonAnimLayoutRealme"

.field private static final TRANSITION_ANIM_DURATION:I = 0x3e8


# instance fields
.field private mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

.field private final mCancelAnimationRunnable:Ljava/lang/Runnable;

.field private mChargingAnimRunning:Z

.field private mCurrentLanguage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLanguageTag:Ljava/lang/String;

.field private mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

.field private mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

.field private mTransitionAnimSet:Landroid/animation/AnimatorSet;

.field private mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

.field private mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

.field private mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

    return-object p0
.end method

.method private cancelChargingAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mChargingAnimRunning:Z

    .line 246
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isColorOSThemeChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->updateVisibleWiredChargingAnimator(Z)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->startLevelAndLogoFadeoutAnimation()V

    .line 251
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isNormalChargingType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->cancelAnimation()V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->cancelAnimation()V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 259
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 263
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 267
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    :cond_4
    return-void
.end method

.method private createNormalTransitionOutAnim()Landroid/animation/ValueAnimator;
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 316
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x3e8

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 326
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$3;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method private createVoocTransitionInAnim()Landroid/animation/ValueAnimator;
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 354
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 356
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$4;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$5;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$5;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSiphonAnimLayoutHeightOffset()I
    .locals 3

    .line 202
    sget p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 p0, 0x15e

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 205
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Anim layout height offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "ChargingSiphonAnimLayoutRealme"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private layoutView()V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x7f0708ad

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 178
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->getSiphonAnimLayoutHeightOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 179
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isVoocChargerTechnology()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0708dc

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0708da

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportGundamAnimation()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0708ac

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 194
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 195
    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 196
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private pauseChargingAnimation()V
    .locals 2

    const/16 v0, 0x8

    .line 232
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->setVisibility(I)V

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mChargingAnimRunning:Z

    .line 234
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 236
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isNormalChargingType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->pauseAnimation(Z)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->pauseAnimation(Z)V

    :goto_0
    return-void
.end method

.method private startChargingAnimation()V
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startChargingAnimation, mChargingAnimRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mChargingAnimRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "ChargingSiphonAnimLayoutRealme"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mChargingAnimRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isNormalChargingType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->startAnimation()V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->startAnimation()V

    .line 225
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->startTransitionAnim()V

    :goto_0
    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mChargingAnimRunning:Z

    return-void
.end method

.method private updateBatteryLevelView(I)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->updateBatteryLevelView(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideChargingAnimLayout()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keyguard"

    const-string v1, "ChargingSiphonAnimLayoutRealme"

    const-string v2, "hideChargingAnimLayout, run"

    .line 285
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 151
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 152
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 155
    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLanguageTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCurrentLanguage:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCurrentLanguage:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v1, v2, p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->onLocaleChanged(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->cancelChargingAnimation()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 162
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLanguageTag:Ljava/lang/String;

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCurrentLanguage:Ljava/lang/String;

    if-eq v2, v1, :cond_2

    .line 168
    :cond_1
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLanguageTag:Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCurrentLanguage:Ljava/lang/String;

    .line 170
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->onLocaleChanged(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "Keyguard"

    const-string v1, "ChargingSiphonAnimLayoutRealme"

    const-string v2, "onFinishInflate()"

    .line 100
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a063c

    .line 101
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    const v0, 0x7f0a063d

    .line 102
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

    const v0, 0x7f0a0159

    .line 103
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->pauseChargingAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->startChargingAnimation()V

    return-void
.end method

.method public onUpdateLevel(I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->updateBatteryLevelView(I)V

    return-void
.end method

.method public onWiredChargingAnimChanged()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->onWiredChargingAnimChanged()V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->layoutView()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mChargingAnimRunning:Z

    return-void
.end method

.method public removeCancelAnimationRunnable()V
    .locals 3

    const-string v0, "Keyguard"

    const-string v1, "ChargingSiphonAnimLayoutRealme"

    const-string v2, "removeCancelAnimationRunnable, run"

    .line 291
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public resumeWhenStartdWakingUp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setVisibility(I)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showChargingAnimLayout()V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    const/4 v1, 0x1

    .line 276
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->updateVisibleWiredChargingAnimator(Z)V

    .line 277
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->startLevelAndLogoFadeinAnimation()V

    :cond_0
    return-void
.end method

.method public startTransitionAnim()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->createNormalTransitionOutAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    .line 305
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->createVoocTransitionInAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    .line 306
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    .line 307
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 308
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public stopAllAnimation()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->stopAllAnimation(Z)V

    .line 298
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->stopAllAnimation(Z)V

    return-void
.end method
