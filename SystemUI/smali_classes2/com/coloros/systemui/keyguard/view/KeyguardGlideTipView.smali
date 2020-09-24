.class public Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;
.super Landroid/widget/LinearLayout;
.source "KeyguardGlideTipView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final ALPHA_HIDE:Landroid/view/animation/PathInterpolator;

.field private static final ALPHA_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final ANIM_DELAY:I = 0x1f4

.field private static final DEBUG_SHOW_TIPS:Ljava/lang/String; = "debug_show_tips"

.field private static final DOWN_Y_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final DURATION_DOWN:I = 0x1f4

.field private static final DURATION_HIDE:I = 0x1f4

.field private static final DURATION_SHOW:I = 0x3e8

.field private static final DURATION_UP:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "KeyguardGlideTipView"

.field private static final TEXT_VIEW_ALPHA:F = 0.55f

.field private static final UP_Y_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final Y_OFFSET:I = 0xd


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOpenTips:Z

.field private mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mSlideUpAnimatorRunnable:Ljava/lang/Runnable;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTipImageView:Landroid/widget/ImageView;

.field private mTipTextView:Landroid/widget/TextView;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->DOWN_Y_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 67
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->UP_Y_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 68
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->ALPHA_SHOW:Landroid/view/animation/PathInterpolator;

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->ALPHA_HIDE:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 195
    new-instance p2, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$1;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 215
    new-instance p2, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$2;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$2;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 246
    new-instance p2, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$iTt6tSAHP8YpyGLANzTgX7vnc2U;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$iTt6tSAHP8YpyGLANzTgX7vnc2U;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mSlideUpAnimatorRunnable:Ljava/lang/Runnable;

    .line 95
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->stopAnimator()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->checkIfNeedHide()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mSlideUpAnimatorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->startTipsAnimator()V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->resetViewWhenAnimatorStart()V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->resetViewWhenAnimatorEnd()V

    return-void
.end method

.method private checkIfNeedHide()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->isFingerprintUnlockEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 210
    :cond_3
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->setVisibility(I)V

    return-void
.end method

.method private getAlphaHideTipsTextAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 326
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$VmuYa10QtoC2TkFZd7B7C1f6aOI;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$VmuYa10QtoC2TkFZd7B7C1f6aOI;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x1f4

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 331
    sget-object p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->ALPHA_HIDE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object v0

    :array_0
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x0
    .end array-data
.end method

.method private getAlphaShowTipsTextAnimator(Z)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 313
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$H8ROZAIHUWpDaFGc666DE6Bya3w;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$H8ROZAIHUWpDaFGc666DE6Bya3w;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x3e8

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 318
    sget-object p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->ALPHA_SHOW:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x1f4

    .line 320
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f0ccccd    # 0.55f
    .end array-data
.end method

.method private getDownTipsImageAnimator(ZZ)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 287
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mYOffset:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$u9dofPwbWWX5EXiRFZBTx0MnyXs;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$u9dofPwbWWX5EXiRFZBTx0MnyXs;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p0, 0x1f4

    .line 294
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 295
    sget-object v1, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->DOWN_Y_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    return-object v0
.end method

.method private getUpTipsImageAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 303
    new-array v0, v0, [I

    iget v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mYOffset:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$oSZThAOJ6iSvM6rds5jdjOkraYc;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$oSZThAOJ6iSvM6rds5jdjOkraYc;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x3e8

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 308
    sget-object p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->UP_Y_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 116
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mYOffset:I

    .line 117
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->isOpenTips()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mOpenTips:Z

    const-string v0, "device_policy"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private isLaunchingAffordance()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLaunchingAffordance()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getAffordanceHelper()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getAffordanceHelper()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOpenTips()Z
    .locals 3

    const/4 v0, 0x1

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "debug_show_tips"

    .line 127
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 126
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const-string p0, "KeyguardGlideTipView"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOpenTips result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private resetViewWhenAnimatorEnd()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private resetViewWhenAnimatorStart()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 339
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 341
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 342
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    const v3, 0x7f11084c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 343
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private startSlideUpTipsAnimator()V
    .locals 8

    .line 254
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->stopAnimator()V

    .line 255
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 256
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x5

    .line 257
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getDownTipsImageAnimator(ZZ)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 258
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getUpTipsImageAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-direct {p0, v2, v4}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getDownTipsImageAnimator(ZZ)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 259
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getUpTipsImageAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    invoke-direct {p0, v4, v4}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getDownTipsImageAnimator(ZZ)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 257
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 261
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 262
    new-array v3, v7, [Landroid/animation/Animator;

    invoke-direct {p0, v4}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getAlphaShowTipsTextAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v7

    aput-object v7, v3, v2

    .line 263
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getAlphaHideTipsTextAnimator()Landroid/animation/ValueAnimator;

    move-result-object v7

    aput-object v7, v3, v4

    .line 264
    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getAlphaShowTipsTextAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v7

    aput-object v7, v3, v5

    .line 265
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getAlphaHideTipsTextAnimator()Landroid/animation/ValueAnimator;

    move-result-object v7

    aput-object v7, v3, v6

    .line 262
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 267
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$3;

    invoke-direct {v6, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$3;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 282
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startTipsAnimator()V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 230
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->shouldShowKgdAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 231
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 232
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->isLaunchingAffordance()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mOpenTips:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mSlideUpAnimatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopAnimator()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method private updateTipImageViewColor()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f0405d2

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 158
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 159
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 173
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->stopAnimator()V

    .line 174
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 175
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 176
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$getAlphaHideTipsTextAnimator$4$KeyguardGlideTipView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$getAlphaShowTipsTextAnimator$3$KeyguardGlideTipView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$getDownTipsImageAnimator$1$KeyguardGlideTipView(ZLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    if-eqz p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getUpTipsImageAnimator$2$KeyguardGlideTipView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public synthetic lambda$new$0$KeyguardGlideTipView()V
    .locals 2

    const-string v0, "KeyguardGlideTipView"

    const-string v1, "mSlideUpAnimatorRunnable start"

    .line 247
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->isLaunchingAffordance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->startSlideUpTipsAnimator()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 102
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 103
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 110
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 111
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 136
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a059e

    .line 137
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a059d

    .line 139
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mTipImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->updateTipImageViewColor()V

    .line 142
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->startTipsAnimator()V

    .line 143
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->checkIfNeedHide()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->updateTipImageViewColor()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->stopAnimator()V

    .line 190
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mSlideUpAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 192
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->setAlpha(F)V

    return-void
.end method

.method public setKeyguardBottomAreaView(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public stop()V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->stopAnimator()V

    .line 181
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->resetViewWhenAnimatorEnd()V

    return-void
.end method
