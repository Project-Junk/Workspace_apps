.class public Lcom/android/keyguard/base/ColorKeyguardCtrl;
.super Ljava/lang/Object;
.source "ColorKeyguardCtrl.java"

# interfaces
.implements Lcom/android/keyguard/base/IKeyguardCtrl;


# static fields
.field private static final ANIMATION_HALF_INTERPOLATION:F = 0.5f

.field private static final FADE_OUT_ANIM_DURATION:I = 0xc8

.field private static final SHOW_SECURITY_REASON_BY_FACEUNLOCK_EVENT:I = 0x3

.field private static final SHOW_SECURITY_REASON_BY_FINGERPRINT_EVENT:I = 0x2

.field private static final SHOW_SECURITY_REASON_BY_TOUCH_EVENT:I = 0x1

.field private static final SHOW_SECURITY_REASON_FOR_FBE:I = 0x4

.field private static final SHOW_SECURITY_REASON_IGNORE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorKeyguardCtrl"

.field private static final VIEW_OPAQUE:F = 1.0f

.field private static final ZOOM_IN_ANIM_DURATION:I = 0x3e8


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundId:I

.field private mContentViewId:I

.field protected final mContext:Landroid/content/Context;

.field private mFadeInterpolator:Landroid/view/animation/Interpolator;

.field private mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHostCallback:Lcom/android/keyguard/base/HostCallback;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

.field private mLockViewLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mView:Landroid/view/View;

.field private mZoomInAnimSet:Landroid/animation/AnimatorSet;

.field private mZoomInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Lcom/android/keyguard/base/ColorKeyguardCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl$1;-><init>(Lcom/android/keyguard/base/ColorKeyguardCtrl;)V

    iput-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    .line 88
    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 90
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    .line 91
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/base/ColorKeyguardCtrl;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    return-object p0
.end method

.method private static componentNameEqual(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 3

    const/4 v0, 0x0

    .line 428
    :try_start_0
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 437
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :catch_1
    :cond_0
    return v0
.end method

.method private fadeOutAnim()V
    .locals 8

    .line 465
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "ColorKeyguardCtrl"

    const-string v0, "fadeOutAnim disable as mView == null"

    .line 466
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 470
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 471
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 472
    iget-object v2, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    .line 473
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    iget-object v4, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 476
    iget-object v5, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 479
    iget-object v5, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    new-array v6, v1, [F

    fill-array-data v6, :array_2

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 480
    iget-object v6, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 481
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 483
    iget-object v2, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/base/ColorKeyguardCtrl$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl$2;-><init>(Lcom/android/keyguard/base/ColorKeyguardCtrl;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 505
    iget-object v2, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v4, v3, v0

    aput-object v5, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f83d70a    # 1.03f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f83d70a    # 1.03f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getActionFromCpName(Landroid/content/ComponentName;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.activities.DialtactsActivity;end"

    .line 406
    invoke-static {v0, p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->componentNameEqual(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.DialtactsActivityAlias;end"

    .line 407
    invoke-static {v0, p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->componentNameEqual(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.mms/.ui.ConversationList;end"

    .line 410
    invoke-static {v0, p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->componentNameEqual(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.oppo.camera/.Camera;end"

    .line 413
    invoke-static {v0, p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->componentNameEqual(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/16 p0, 0x64

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private hasSecurityKeyguard()Z
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result p0

    return p0
.end method

.method private resetState()V
    .locals 2

    const-string v0, "ColorKeyguardCtrl"

    const-string v1, "reset default operation"

    .line 339
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->onVisibilityChanged(I)V

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->checkStatusBarClockVisibility(Z)V

    :cond_0
    return-void
.end method

.method private zoomInAnim(I)V
    .locals 6

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "ColorKeyguardCtrl"

    const-string p1, "zoomInAnim disable as mView == null"

    .line 444
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mZoomInAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 448
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mZoomInAnimSet:Landroid/animation/AnimatorSet;

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 450
    iget-object v2, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, p1

    .line 451
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 453
    iget-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 454
    iget-object v4, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 457
    iget-object v2, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mZoomInAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 459
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mZoomInAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 460
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mZoomInAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f83d70a    # 1.03f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f83d70a    # 1.03f
    .end array-data
.end method


# virtual methods
.method public beInflated(Landroid/content/Context;Landroid/view/ViewGroup;I)I
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beInflated mContentViewId  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mContentViewId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ColorKeyguardCtrl"

    invoke-static {v0, p3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget p3, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mContentViewId:I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 173
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->initLayoutParam()V

    .line 176
    iget-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    iget-object p3, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mLockViewLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->onFinishInflate()V

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->checkStatusBarClockVisibility(Z)V

    return v0
.end method

.method public checkNeedsChangeWallpaper(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkNeedsInput()V
    .locals 0

    return-void
.end method

.method public checkStatusBarClockVisibility(Z)V
    .locals 1

    .line 514
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    const v0, -0x800001

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public deliverIntent(Landroid/content/Intent;)V
    .locals 1

    .line 145
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mHostCallback:Lcom/android/keyguard/base/HostCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 146
    invoke-interface {p0, p1, v0}, Lcom/android/keyguard/base/HostCallback;->deliverIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    return-void
.end method

.method public doDismissNormalAnim()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->fadeOutAnim()V

    return-void
.end method

.method public doErrorAnim(I)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->zoomInAnim(I)V

    return-void
.end method

.method public endMoving(FI)V
    .locals 0

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getExactLockView()Landroid/view/View;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getExtraWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 380
    iget v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mBackgroundId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mBackgroundId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 384
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyguardUpdateMonitorCallback()Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;
    .locals 0

    .line 216
    new-instance p0, Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;-><init>()V

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public handleMoving(FI)V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public inNotificationArea(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initLayoutParam()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenHeight()I

    move-result v1

    .line 160
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mLockViewLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 161
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mLockViewLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x50

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public isVisible()Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ColorKeyguardCtrl"

    const-string v0, "isVisible return false as mView == null"

    .line 236
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public keygaurdType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public keyguardDone(I)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguardDone actionAfterKeyguardDonec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorKeyguardCtrl"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mHostCallback:Lcom/android/keyguard/base/HostCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 153
    invoke-interface {p0, v0, p1}, Lcom/android/keyguard/base/HostCallback;->keyguardDone(ZI)V

    :cond_0
    return-void
.end method

.method public leatherOpen()V
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->onRemoveWhenDouble()V

    :cond_0
    return-void
.end method

.method public onFingerprintEvent(II)V
    .locals 2

    if-lez p1, :cond_2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintEvent Fingerprint unLock failed, failedCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failedReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorKeyguardCtrl"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->shouldStayInNormalKgd(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x3e8

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->doErrorAnim(I)V

    goto :goto_1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 277
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->onRemoveWhenDouble(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public onFirstPointerUp()V
    .locals 0

    return-void
.end method

.method public onRemoveWhenDouble()V
    .locals 1

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->onRemoveWhenDouble(I)V

    return-void
.end method

.method public onRemoveWhenDouble(I)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveWhenDouble reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorKeyguardCtrl"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->hasSecurityKeyguard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->doDismissNormalAnim()V

    goto :goto_0

    :cond_0
    const-string p0, "onRemoveWhenDouble something wrong must happened,so SecurityKeyguard is null "

    .line 302
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ColorKeyguardCtrl"

    const-string v1, "onScreenTurnedOn  mFadeOutAnimatorSet isRunning, cancel!"

    .line 320
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->resetState()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onSystemRebooted()V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public readyMoving(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "ColorKeyguardCtrl"

    const-string v1, "reset"

    .line 331
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->resetState()V

    return-void
.end method

.method public setBackground(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mBackgroundId:I

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mContentViewId:I

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mView:Landroid/view/View;

    return-void
.end method

.method public setHostCallback(Lcom/android/keyguard/base/HostCallback;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl;->mHostCallback:Lcom/android/keyguard/base/HostCallback;

    return-void
.end method

.method public setKeyguardVisibility(I)V
    .locals 0

    return-void
.end method

.method public setOccluded(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public verifyUnlock()V
    .locals 0

    return-void
.end method
