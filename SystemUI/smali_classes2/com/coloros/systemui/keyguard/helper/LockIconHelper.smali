.class public Lcom/coloros/systemui/keyguard/helper/LockIconHelper;
.super Ljava/lang/Object;
.source "LockIconHelper.java"


# static fields
.field private static final COLOR_LOCKICON_IN_BOUNCER:I = -0x1

.field private static final EXPANSION_HIDDEN:F = 1.0f

.field private static final EXPANSION_VISIBLE:F = 0.0f

.field private static final HORIZONTAL_MOVING_APPEAR_DURATION:J = 0x12cL

.field private static final STATE_BIOMETRICS_ERROR:I = 0x3

.field private static final STATE_BIOMETRICS_FAILED:I = 0x4

.field private static final STATE_LOCKED:I = 0x0

.field private static final STATE_LOCK_OPEN:I = 0x1

.field private static final STATE_SCANNING_FACE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockIconHelper"

.field private static final TIPS_ALPHA_APPEAR_DURATION:J = 0x190L

.field private static final TIPS_CLIP_APPEAR_DURATION:J = 0x190L

.field private static final TIPS_DISAPPEAR_DURATION:J = 0xfaL

.field private static final TYPE_FACE_DETECTING:I = 0x5

.field private static final TYPE_FACE_ERROR:I = 0x1

.field private static final TYPE_FACE_FAILED:I = 0x2

.field private static final TYPE_FACE_TO_PADLOCK_TRANSITION:I = 0x6

.field private static final TYPE_LOCK_NORMAL:I = 0x4

.field private static final TYPE_PADLOCK_TO_FACE_TRANSITION:I = 0x7

.field private static final TYPE_UNLOCK_NORMAL:I = 0x3

.field private static final VERTICAL_FAST_MOVING_ANIM_DURATION:J = 0xc8L

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;


# instance fields
.field private mAnimHide:Z

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultContext:Landroid/content/Context;

.field private mDistanceY:F

.field private mHideTipsAnimSet:Landroid/animation/AnimatorSet;

.field private mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

.field private mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

.field private mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mShowTipsAnimSet:Landroid/animation/AnimatorSet;

.field private mTextContainer:Landroid/widget/RelativeLayout;

.field private mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mTipsClipAnim:Landroid/animation/ValueAnimator;

.field private mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

.field private mTranslationX:I

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVerticalMoveAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    .line 111
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    .line 112
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDefaultContext:Landroid/content/Context;

    .line 113
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 114
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 115
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    .line 116
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703fd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDistanceY:F

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDistanceY:F

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;F)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->updateColor(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)Lcom/coloros/systemui/keyguard/view/ColorTipsView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    return-object p0
.end method

.method private getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 1

    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(IZ)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p0

    return-object p0
.end method

.method private getColorAnimationDrawableOptions(IZ)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 573
    :pswitch_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11048d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 574
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0043

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 575
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0044

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 568
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11048b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 569
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b003f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 570
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0040

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto/16 :goto_0

    .line 562
    :pswitch_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11048a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 563
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 564
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b003e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v2, 0x0

    goto :goto_0

    .line 557
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11049e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 558
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b005f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 559
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0060

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 552
    :pswitch_4
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11049f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 553
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0061

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 554
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0062

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 547
    :pswitch_5
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11048c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 548
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 549
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0042

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    move v6, p0

    move-object v4, p1

    move v5, v0

    goto :goto_2

    :goto_1
    :pswitch_6
    move v5, v0

    move v6, v5

    move-object v4, v1

    :goto_2
    move v7, v2

    if-eqz v4, :cond_1

    if-ltz v5, :cond_1

    if-gez v6, :cond_0

    goto :goto_3

    .line 581
    :cond_0
    new-instance p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-object v3, p0

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;IIZZ)V

    return-object p0

    :cond_1
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;
    .locals 2

    .line 100
    sget-object v0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    if-nez v0, :cond_1

    .line 101
    const-class v0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 107
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    return-object p0
.end method

.method private getMaxFrameDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 496
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 498
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getName()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getFrames()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    invoke-virtual {v0, v2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 504
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 506
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find drawable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockIconHelper"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method private setVerticalExpansion(F)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDistanceY:F

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startAnimatorTranslationY(Landroid/view/View;FF)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    const-string v1, "LockIconHelper"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "fast moving anim is running, reverse"

    .line 220
    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimatorTranslationY, startY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 226
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 227
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 231
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "translationY"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    .line 232
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$1;

    invoke-direct {p2, p0, p3}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$1;-><init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;F)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 228
    :cond_2
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private startFastMovingAnim(Z)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mVerticalMoveAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 204
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFastMovingAnim, isBouncer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockIconHelper"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 206
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    iget v2, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDistanceY:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    .line 207
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDistanceY:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_5

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDistanceY:F

    invoke-direct {p0, p1, v1, v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->startAnimatorTranslationY(Landroid/view/View;FF)V

    goto :goto_0

    .line 211
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    .line 212
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_5

    .line 213
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDistanceY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->startAnimatorTranslationY(Landroid/view/View;FF)V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateColor(F)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAnimationOptions(IIZZZZZZ)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 4

    const/4 p3, 0x0

    if-eqz p6, :cond_0

    if-nez p4, :cond_0

    if-nez p8, :cond_0

    return-object p3

    :cond_0
    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-eq p1, p4, :cond_1

    if-ne p2, p4, :cond_1

    move p7, p6

    goto :goto_0

    :cond_1
    move p7, p5

    :goto_0
    if-eq p1, p6, :cond_2

    if-ne p2, p6, :cond_2

    move p8, p6

    goto :goto_1

    :cond_2
    move p8, p5

    :goto_1
    if-ne p1, p6, :cond_3

    if-nez p2, :cond_3

    move v0, p6

    goto :goto_2

    :cond_3
    move v0, p5

    :goto_2
    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    if-ne p2, v1, :cond_4

    move p1, p6

    goto :goto_3

    :cond_4
    move p1, p5

    .line 429
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnimationRes, isError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFaceAuthSucceed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 430
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBiometricAuthSucceeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 431
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", justUnlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", justLocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFailed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFaceDetecting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    if-ne p2, v3, :cond_5

    move p5, p6

    :cond_5
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v2, "LockIconHelper"

    .line 429
    invoke-static {v2, p5}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_6

    .line 438
    invoke-direct {p0, p6}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz p1, :cond_7

    .line 440
    invoke-direct {p0, v3}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p8, :cond_9

    .line 442
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 443
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 444
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContext:Landroid/content/Context;

    .line 445
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 446
    :cond_8
    invoke-direct {p0, p4}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p0

    return-object p0

    :cond_9
    if-eqz v0, :cond_b

    .line 449
    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p1

    if-nez p1, :cond_a

    const-string p1, "locked anim is null, load the unlock anim in reverse"

    .line 452
    invoke-static {v2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, p4, p6}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(IZ)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p1

    :cond_a
    return-object p1

    :cond_b
    if-ne p2, v3, :cond_c

    const/4 p1, 0x5

    .line 457
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p0

    return-object p0

    :cond_c
    return-object p3
.end method

.method public getFaceDetectingAnim()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;
    .locals 2

    const/4 v0, 0x5

    .line 585
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v0

    .line 586
    new-instance v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDefaultContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    return-object v1
.end method

.method public getIconForState(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const v0, 0x7f080e53

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p2, v1, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    if-eq p2, v3, :cond_5

    if-ne p2, v2, :cond_0

    const v0, 0x7f08075e

    goto :goto_0

    .line 490
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const v0, 0x7f080719

    goto :goto_0

    .line 481
    :cond_2
    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p2

    if-eqz p2, :cond_3

    const v0, 0x7f080e43

    goto :goto_0

    .line 483
    :cond_3
    invoke-direct {p0, v3}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 484
    invoke-direct {p0, p1, v3}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getMaxFrameDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    .line 492
    :cond_5
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIconView()Landroid/view/View;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object p0
.end method

.method public getTransitionAnimation(Landroid/content/Context;I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2

    const/4 v2, 0x7

    if-eq p2, v2, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 519
    :cond_0
    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "LockIconHelper"

    const-string v2, "padlock to face anim is null, load the face to padlock anim in reverse"

    .line 522
    invoke-static {p2, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 523
    invoke-direct {p0, v1, p2}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(IZ)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p2

    goto :goto_0

    .line 516
    :cond_2
    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getColorAnimationDrawableOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 528
    new-instance p2, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-direct {p2, p1, p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    return-object p2

    :cond_3
    return-object v0
.end method

.method public hideTips()V
    .locals 1

    .line 330
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$9RAyZRQharxg_Pn2rJlyHh1TpSc;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$9RAyZRQharxg_Pn2rJlyHh1TpSc;-><init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$hideTips$2$LockIconHelper()V
    .locals 10

    .line 331
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    const-string v1, "LockIconHelper"

    if-eqz v0, :cond_0

    const-string p0, "hideTips, tips is hided"

    .line 332
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHideTipsAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "hideTips, hide tips animation is running"

    .line 336
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mShowTipsAnimSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mShowTipsAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    .line 341
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    const-string p0, "hideTips, show tips animation is running, reverse"

    .line 342
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideTips, TranslationX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTranslationX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", !mUpdateMonitor.isScreenOn() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 346
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mUpdateMonitor.isKeyguardVisible() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 347
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 351
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 352
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v4, 0x2

    new-array v5, v4, [F

    iget v6, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTranslationX:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v3

    aput v1, v5, v2

    const-string v6, "translationX"

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

    .line 364
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0xfa

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 365
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    new-array v5, v4, [F

    iget v9, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTranslationX:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v5, v3

    aput v1, v5, v2

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

    .line 368
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    const-string v5, "alpha"

    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 372
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 373
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    new-array v0, v4, [I

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->getTextWidth()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v3

    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    .line 376
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 377
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$2;-><init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$3;-><init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHideTipsAnimSet:Landroid/animation/AnimatorSet;

    .line 409
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHideTipsAnimSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v4

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 410
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHideTipsAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 411
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    return-void

    .line 353
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setTranslationX(F)V

    .line 354
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setTranslationX(F)V

    .line 355
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setAlpha(F)V

    .line 356
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setClipWidth(I)V

    .line 357
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->reset()V

    .line 358
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->invalidate()V

    .line 359
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public synthetic lambda$null$0$LockIconHelper(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 316
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 317
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setClipWidth(I)V

    .line 318
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->invalidate()V

    return-void
.end method

.method public synthetic lambda$onClickLockIcon$3$LockIconHelper(Landroid/view/View;)V
    .locals 2

    const-string p1, "LockIconHelper"

    const-string v0, "call onClickLockIcon"

    .line 603
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onClickLockIcon startListeningForFaceUnlock"

    .line 606
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isDismissKeyguardByPressedLockIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onClickLockIcon dismissKeyguard"

    .line 609
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p1, :cond_2

    .line 611
    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->dismissKeyguard()V

    goto :goto_0

    .line 614
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->processLockWhenTrustEnable(I)Z

    .line 616
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_3

    .line 617
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$showTips$1$LockIconHelper(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_7

    .line 260
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    const-string v1, "LockIconHelper"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "showTips, in bouncer, don\'t show tips"

    .line 264
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mShowTipsAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "showTips, show tips animation is running"

    .line 268
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "showTips, not hide and have same text"

    .line 272
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHideTipsAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "showTips, hide tips animation is running"

    .line 276
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHideTipsAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 279
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTips, text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setText(Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->getTextWidth()I

    move-result p1

    const/4 v0, 0x2

    div-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTranslationX:I

    .line 285
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 286
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 287
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_0

    .line 298
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    iget v4, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTranslationX:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v4, "translationX"

    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

    .line 299
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 300
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    new-array v2, v0, [F

    aput v3, v2, v1

    iget v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTranslationX:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

    .line 303
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 304
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 308
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 309
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 312
    new-array p1, v0, [I

    aput v1, p1, v1

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->getTextWidth()I

    move-result v4

    aput v4, p1, v5

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    .line 313
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$hzRrZdOcyMB3V-q8-IJidPp_p1c;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$hzRrZdOcyMB3V-q8-IJidPp_p1c;-><init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 321
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mShowTipsAnimSet:Landroid/animation/AnimatorSet;

    .line 322
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mShowTipsAnimSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalIconMoveAnim:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mHorizontalTipsMoveAnim:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsAlphaAnim:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsClipAnim:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 323
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mShowTipsAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 325
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    return-void

    .line 288
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTranslationX:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setTranslationX(F)V

    .line 289
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTranslationX:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setTranslationX(F)V

    .line 290
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setAlpha(F)V

    .line 291
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->getTextWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setClipWidth(I)V

    .line 292
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->invalidate()V

    .line 293
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mAnimHide:Z

    :cond_7
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onClickLockIcon(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    .line 602
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$xhImS-Icz4yzo-jPoZpMmKmn2t0;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$xhImS-Icz4yzo-jPoZpMmKmn2t0;-><init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x1

    .line 620
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    return-void
.end method

.method public setBouncerVisible(Z)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->startFastMovingAnim(Z)V

    return-void
.end method

.method public setExpansion(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    .line 147
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->setVerticalExpansion(F)V

    .line 149
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->updateColor(F)V

    return-void
.end method

.method public setView(Landroid/widget/LinearLayout;)V
    .locals 2

    .line 120
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContainer:Landroid/widget/LinearLayout;

    .line 121
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a058f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    .line 122
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a059f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    .line 123
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0362

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 126
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070400

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 135
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTextContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-void
.end method

.method public showTips(Ljava/lang/String;)V
    .locals 1

    .line 259
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$oFeAPXcb4QETj8JO3IZ19OYQ3dw;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$oFeAPXcb4QETj8JO3IZ19OYQ3dw;-><init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateDarkTint(I)V
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->mTipsView:Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    if-eqz p0, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->updateTextColor(I)V

    :cond_0
    return-void
.end method
