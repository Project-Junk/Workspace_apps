.class public Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;
.super Landroid/widget/FrameLayout;
.source "WiredChargingSiphonAnimLayout.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;


# static fields
.field public static final CANCEL_WIRED_CHARGING_DELAY:I = 0x1f4

.field private static final NORMAL_TRANSITION_OUT_ANIM_DELAY:I = 0x1f4

.field public static final SCREEN_FINGERPRINT_BOTTOM:I = 0x190

.field public static final SIPHON_ANIM_LAYOUT_HEIGHT_OFFSET:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "WiredChargingSiphonAnimLayout"

.field private static final TRANSITION_ANIM_DURATION:I = 0x3e8


# instance fields
.field private mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

.field private final mCancelAnimationRunnable:Ljava/lang/Runnable;

.field private mChargingAnimRunning:Z

.field private mCurrentLanguage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLanguageTag:Ljava/lang/String;

.field private mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

.field private mLiziAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;

.field private mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

.field private mTransitionAnimSet:Landroid/animation/AnimatorSet;

.field private mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

.field private mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

.field private mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

    return-object p0
.end method

.method private cancelChargingAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mChargingAnimRunning:Z

    .line 236
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isColorOSThemeChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->updateVisibleWiredChargingAnimator(Z)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->startLevelAndLogoFadeoutAnimation()V

    .line 241
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isNormalChargingType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;->cancelAnimation()V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;->cancelAnimation()V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLiziAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;->cancelAnimation()V

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 251
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 254
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 255
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 258
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 259
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    :cond_5
    return-void
.end method

.method private createNormalTransitionOutAnim()Landroid/animation/ValueAnimator;
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 306
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x3e8

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 316
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$3;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createVoocTransitionInAnim()Landroid/animation/ValueAnimator;
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 344
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 346
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$4;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 353
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$5;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$5;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSiphonAnimLayoutHeightOffset()I
    .locals 3

    .line 187
    sget p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 p0, 0x15e

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 190
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Anim layout height offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "WiredChargingSiphonAnimLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private layoutView()V
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x7f0708ad

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 163
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->getSiphonAnimLayoutHeightOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 164
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isVoocChargerTechnology()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0708dc

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0708da

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportGundamAnimation()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0708ac

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 179
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 181
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private pauseChargingAnimation()V
    .locals 2

    const/16 v0, 0x8

    .line 219
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mChargingAnimRunning:Z

    .line 221
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 223
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isNormalChargingType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;->pauseAnimation(Z)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;->pauseAnimation(Z)V

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLiziAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;->pauseAnimation(Z)V

    :cond_2
    return-void
.end method

.method private startChargingAnimation()V
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startChargingAnimation, mChargingAnimRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mChargingAnimRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "WiredChargingSiphonAnimLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mChargingAnimRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isNormalChargingType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;->startAnimation()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;->startAnimation()V

    .line 210
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->startTransitionAnim()V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLiziAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;->startAnimation()V

    :cond_2
    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mChargingAnimRunning:Z

    return-void
.end method

.method private updateBatteryLevelView(I)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->updateBatteryLevelView(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideChargingAnimLayout()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 137
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 140
    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLanguageTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCurrentLanguage:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCurrentLanguage:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v1, v2, p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->onLocaleChanged(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->cancelChargingAnimation()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 150
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLanguageTag:Ljava/lang/String;

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCurrentLanguage:Ljava/lang/String;

    if-eq v2, v1, :cond_2

    .line 153
    :cond_1
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLanguageTag:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCurrentLanguage:Ljava/lang/String;

    .line 155
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->onLocaleChanged(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "Keyguard"

    const-string v1, "WiredChargingSiphonAnimLayout"

    const-string v2, "onFinishInflate()"

    .line 83
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a063c

    .line 84
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

    const v0, 0x7f0a063d

    .line 85
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

    const v0, 0x7f0a063b

    .line 86
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLiziAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;

    const v0, 0x7f0a0159

    .line 87
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->pauseChargingAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->startChargingAnimation()V

    return-void
.end method

.method public onUpdateLevel(I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->updateBatteryLevelView(I)V

    return-void
.end method

.method public onWiredChargingAnimChanged()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->onWiredChargingAnimChanged()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLiziAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;->stopAllAnimation(Z)V

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->layoutView()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mChargingAnimRunning:Z

    return-void
.end method

.method public removeCancelAnimationRunnable()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCancelAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mCancelAnimationRunnable:Ljava/lang/Runnable;

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

    .line 129
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 130
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showChargingAnimLayout()V
    .locals 2

    .line 264
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->updateVisibleWiredChargingAnimator(Z)V

    .line 268
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->startLevelAndLogoFadeinAnimation()V

    :cond_0
    return-void
.end method

.method public startTransitionAnim()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->createNormalTransitionOutAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    .line 295
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->createVoocTransitionInAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    .line 296
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    .line 297
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mNormalAlphaFadeoutAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAlphaFadeinAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 298
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mTransitionAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public stopAllAnimation()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;->stopAllAnimation(Z)V

    .line 287
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mVoocAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;->stopAllAnimation(Z)V

    .line 288
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->mLiziAnimationView:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLiziAnimationView;->stopAllAnimation(Z)V

    return-void
.end method
