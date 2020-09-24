.class public abstract Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_ANIMATION_LENGTH:I = 0xdc

.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ALPHA_ANIMATION_END:F = 0.0f

.field private static final BACKGROUND_ANIMATION_LENGTH_MS:I = 0xdc

.field private static final DARK_ANIMATION_LENGTH:J = 0x1f4L

.field private static final DARK_EXIT_SCALE_START:F = 0.93f

.field private static final HORIZONTAL_ANIMATION_END:F = 0.2f

.field private static final HORIZONTAL_ANIMATION_START:F = 1.0f

.field private static final HORIZONTAL_COLLAPSED_REST_PARTIAL:F = 0.05f

.field protected static final NO_COLOR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ActivatableNotificationView"

.field private static final VERTICAL_ANIMATION_START:F = 1.0f


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field protected mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field protected mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field private mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBgAlpha:F

.field protected mBgTint:I

.field private mBlockNextTouch:Z

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentBackgroundTint:I

.field protected mDark:Z

.field protected mDimmed:Z

.field private mDimmedAlpha:I

.field private mDimmedBackgroundFadeInAmount:F

.field private final mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDrawingAppearAnimation:Z

.field private mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFirstInSection:Z

.field private mHeadsUpAddStartLocation:I

.field private mHeadsUpLocation:F

.field private mIsAppearing:Z

.field private mIsBelowSpeedBump:Z

.field private mIsHeadsUpAnimation:Z

.field private mLastInSection:Z

.field private mNeedsDimming:Z

.field private mNormalBackgroundVisibilityAmount:F

.field private mNormalColor:I

.field protected mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

.field private mOverrideAmount:F

.field private mOverrideTint:I

.field private mShadowHidden:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTint:I

.field protected final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTargetTint:I

.field private mTintedRippleColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 107
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v4, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 109
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 118
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 153
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    .line 158
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 167
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    .line 168
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 281
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 196
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 197
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v3, v2, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipChildren(Z)V

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipToPadding(Z)V

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateColors()V

    .line 201
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 202
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 204
    new-instance p1, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$raBogtwUDgGzree3QaRWS5kgw_g;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$raBogtwUDgGzree3QaRWS5kgw_g;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$fZ3qu4yQQcyUWjUQZMAyhFN3cZI;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$fZ3qu4yQQcyUWjUQZMAyhFN3cZI;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ELE-e-9GisA3PeCbD7mpobFwmaM;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ELE-e-9GisA3PeCbD7mpobFwmaM;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PkPBcaaRR8KHImTlnKW995Xmvx8;

    invoke-direct {v5, p2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PkPBcaaRR8KHImTlnKW995Xmvx8;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initDimens()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mStartTint:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetTint:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method private calculateBgColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1049
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1050
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p1

    .line 1051
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideAmount:F

    invoke-static {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1053
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz p1, :cond_1

    return p1

    .line 1056
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    return p0
.end method

.method private cancelAppearAnimation()V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 1

    .line 1076
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v0, :cond_1

    .line 1077
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setContentAlpha(F)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 1080
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 p1, 0x0

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->invalidate()V

    :cond_1
    return-void
.end method

.method private fadeDimmedBackground()V
    .locals 7

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 690
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    return-void

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 695
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    .line 701
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 702
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v4, :cond_4

    move v2, v3

    :cond_4
    const/16 v3, 0xdc

    .line 705
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_5

    .line 706
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 707
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    long-to-int v3, v3

    .line 708
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 709
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    if-gtz v3, :cond_5

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    return-void

    .line 715
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setAlpha(F)V

    .line 716
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v0, v6, v1

    const/4 v0, 0x1

    aput v2, v6, v0

    .line 717
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$7;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 729
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 384
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getActualHeight()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method private initDimens()V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_dimen_notification_content_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpAddStartLocation:I

    return-void
.end method

.method private isTouchExplorationEnabled()Z
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method private makeActive()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startActivateAnimation(Z)V

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :cond_0
    return-void
.end method

.method private setContentAlpha(F)V
    .locals 2

    .line 999
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object p0

    .line 1000
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1003
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v1, 0x0

    .line 1005
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1008
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startActivateAnimation(Z)V
    .locals 8

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 415
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 418
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-static {v4, v0, v1, v3, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    if-nez p1, :cond_3

    .line 428
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 429
    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 431
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 432
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 434
    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xdc

    .line 435
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 437
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setAlpha(F)V

    .line 438
    new-instance v6, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 448
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 452
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v7, 0x7f080de9

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 454
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setAlpha(F)V

    .line 455
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 457
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_5

    move v1, v3

    .line 458
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 459
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    .line 460
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 470
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 851
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearAnimation()V

    .line 852
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 853
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 856
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 857
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    .line 859
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 860
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 863
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsAppearing:Z

    if-eqz p1, :cond_2

    .line 867
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 868
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 871
    :cond_2
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 872
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    move v0, v1

    :goto_1
    const/4 p2, 0x2

    .line 875
    new-array p2, p2, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    aput v2, p2, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 877
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 878
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    long-to-float p5, p5

    iget p6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr p6, v0

    .line 879
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p6

    mul-float/2addr p5, p6

    float-to-long p5, p5

    .line 878
    invoke-virtual {p2, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 880
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p8, :cond_3

    .line 890
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    const-wide/16 p5, 0x0

    cmp-long p2, p3, p5

    if-lez p2, :cond_4

    .line 894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 895
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearRect()V

    .line 896
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 898
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;

    invoke-direct {p3, p0, p7, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Ljava/lang/Runnable;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 922
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateAppearAnimationAlpha()V
    .locals 2

    .line 991
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    .line 993
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 994
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 995
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setContentAlpha(F)V

    return-void
.end method

.method private updateAppearRect()V
    .locals 9

    .line 941
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 942
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 943
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v2, v3

    .line 944
    iput v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    const/4 v3, 0x0

    sub-float/2addr v0, v3

    const v4, 0x3f4ccccd    # 0.8f

    div-float v4, v0, v4

    .line 949
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 950
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 952
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsAppearing:Z

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    const v5, 0x3d4ccccd    # 0.05f

    :goto_0
    sub-float v4, v1, v4

    .line 955
    invoke-static {v5, v1, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    .line 956
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 959
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    if-eqz v6, :cond_1

    .line 960
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    invoke-static {v6, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    add-float/2addr v5, v4

    goto :goto_1

    .line 963
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 964
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    :goto_1
    div-float/2addr v0, v1

    .line 970
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 971
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 975
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getActualHeight()I

    move-result v6

    .line 976
    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v3, v7, v3

    const v8, 0x3dcccccd    # 0.1f

    if-lez v3, :cond_2

    int-to-float v1, v6

    mul-float/2addr v7, v0

    mul-float/2addr v7, v8

    sub-float/2addr v1, v7

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_2

    :cond_2
    int-to-float v3, v6

    add-float/2addr v7, v3

    mul-float/2addr v7, v0

    mul-float/2addr v7, v8

    sub-float v2, v7, v2

    sub-float/2addr v1, v0

    mul-float/2addr v3, v1

    mul-float/2addr v0, v2

    add-float v1, v3, v0

    move v0, v2

    .line 985
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 986
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v4, v0, v5, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOutlineRect(FFFF)V

    return-void
.end method

.method private updateBackgroundTint(Z)V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getRippleColor()I

    move-result v0

    .line 643
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRippleColor(I)V

    .line 644
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRippleColor(I)V

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    if-nez p1, :cond_1

    .line 647
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    goto :goto_0

    .line 648
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq v0, p1, :cond_2

    .line 649
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mStartTint:I

    .line 650
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetTint:I

    const/4 p1, 0x2

    .line 651
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    .line 652
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 660
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 661
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 662
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 668
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateColors()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mContext:Landroid/content/Context;

    const v1, 0x7f06029e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mContext:Landroid/content/Context;

    const v1, 0x7f0602a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mContext:Landroid/content/Context;

    const v1, 0x7f0602a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mContext:Landroid/content/Context;

    const v1, 0x7f0602a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedAlpha:I

    return-void
.end method

.method private updateOutlineAlpha()V
    .locals 2

    .line 527
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v0

    const v0, 0x3f333333    # 0.7f

    add-float/2addr v1, v0

    .line 528
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOutlineAlpha(F)V

    return-void
.end method


# virtual methods
.method protected applyBackgroundRoundness(FF)V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRoundness(FF)V

    .line 1020
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRoundness(FF)V

    return-void
.end method

.method protected applyRoundness()V
    .locals 2

    .line 1013
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    .line 1014
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundRadiusTop()F

    move-result v0

    .line 1015
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundRadiusBottom()F

    move-result v1

    .line 1014
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyBackgroundRoundness(FF)V

    return-void
.end method

.method public calculateBgColor()I
    .locals 1

    const/4 v0, 0x1

    .line 1032
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p0

    return p0
.end method

.method public cancelAppearDrawing()V
    .locals 1

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearAnimation()V

    const/4 v0, 0x0

    .line 937
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method protected cancelFadeAnimations()V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 790
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .locals 1

    .line 1037
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isClippingNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1040
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1093
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 1095
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1097
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1098
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz p0, :cond_1

    .line 1099
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 369
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->drawableStateChanged()V

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setState([I)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setState([I)V

    :goto_0
    return-void
.end method

.method public getBackgroundColorWithoutTint()I
    .locals 1

    const/4 v0, 0x0

    .line 1124
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p0

    return p0
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method public getCurrentBackgroundTint()I
    .locals 0

    .line 1128
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    return p0
.end method

.method protected getRippleColor()I
    .locals 1

    .line 1061
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 1062
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    return p0

    .line 1064
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    return p0
.end method

.method protected handleSlideBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasSameBgColor(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z
    .locals 0

    .line 1108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected initBackground()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v1, 0x7f080de7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v0, 0x7f080de8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    return-void
.end method

.method public isBelowSpeedBump()Z
    .locals 0

    .line 553
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    return p0
.end method

.method public isDimmable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDimmed()Z
    .locals 0

    .line 1147
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    return p0
.end method

.method public isDrawingAppearAnimation()Z
    .locals 0

    .line 1088
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    return p0
.end method

.method public isFirstInSection()Z
    .locals 0

    .line 585
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    return p0
.end method

.method public isHeadsUpAnimatingAway()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInteractive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLastInSection()Z
    .locals 0

    .line 581
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    return p0
.end method

.method public isPinned()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$ActivatableNotificationView(Z)V
    .locals 2

    .line 207
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    instance-of v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getDisablePullStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeActive()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$1$ActivatableNotificationView()Z
    .locals 0

    .line 221
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->performClick()Z

    move-result p0

    return p0
.end method

.method public makeInactive(Z)V
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 479
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 481
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startActivateAnimation(Z)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 486
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v0, 0x7f080de8

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 491
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    if-eqz p1, :cond_2

    .line 492
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 494
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 0

    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 242
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onDensityOrFontScaleChanged()V

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initDimens()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 254
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onFinishInflate()V

    const v0, 0x7f0a00dc

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v0, 0x7f0a025b

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    const v0, 0x7f0a00db

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 293
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--onInterceptTouchEvent--mNeedsDimming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--disallowSingleClick(ev): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--isTouchExplorationEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--mActivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--ev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "ActivatableNotificationView"

    .line 294
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    return v1

    .line 310
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 795
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onLayout(ZIIII)V

    .line 796
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setPivotX(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 329
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--onTouchEvent--mBlockNextTouch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--mNeedsDimming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--isTouchExplorationEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--isInteractive(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "ActivatableNotificationView"

    .line 330
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 338
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    return p1

    .line 341
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 343
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 345
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 348
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public performAddAnimation(JJZ)V
    .locals 10

    const/4 v0, 0x1

    .line 839
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 840
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    .line 841
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpAddStartLocation:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    .line 842
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    const/high16 p5, -0x40800000    # -1.0f

    :goto_0
    move v3, p5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 843
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    :cond_1
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 392
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->performClick()Z

    move-result p0

    return p0
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 9

    move-object v0, p0

    const/4 v1, 0x1

    .line 825
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    move v1, p6

    .line 826
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    move/from16 v1, p7

    .line 827
    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    .line 828
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p5

    move-wide v3, p3

    move-wide v5, p1

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 829
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    .line 832
    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected resetBackgroundAlpha()V
    .locals 1

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 0

    .line 801
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 802
    div-int/lit8 p2, p1, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setPivotY(F)V

    .line 803
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 804
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    return-void
.end method

.method protected setBackgroundTintColor(I)V
    .locals 1

    .line 673
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq p1, v0, :cond_1

    .line 674
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    .line 675
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    .line 680
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    :cond_1
    return-void
.end method

.method protected setBackgroundTop(I)V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBackgroundTop(I)V

    .line 1026
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBackgroundTop(I)V

    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1

    .line 538
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    .line 539
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    .line 540
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onBelowSpeedBumpChanged()V

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 1

    .line 816
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipBottomAmount(I)V

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 818
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipBottomAmount(I)V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1

    .line 809
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 811
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipTopAmount(I)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 0

    .line 516
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setDark(ZZJ)V

    .line 517
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDark:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 520
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDark:Z

    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    const/4 p1, 0x0

    .line 522
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 1

    .line 498
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    and-int/2addr p1, v0

    .line 500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_1

    .line 501
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->resetBackgroundAlpha()V

    if-eqz p2, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->fadeDimmedBackground()V

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 1

    .line 575
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setDistanceToTopRoundness(F)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDistanceToTopRoundness(F)V

    .line 577
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDistanceToTopRoundness(F)V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 2

    .line 1114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1115
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    .line 1116
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getTranslationZ()F

    move-result p0

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr p0, v1

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->setFakeShadowTranslationZ(FFII)V

    :cond_2
    return-void
.end method

.method public setFirstInSection(Z)V
    .locals 1

    .line 599
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    if-eq p1, v0, :cond_0

    .line 600
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setFirstInSection(Z)V

    .line 602
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setFirstInSection(Z)V

    :cond_0
    return-void
.end method

.method public setLastInSection(Z)V
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    if-eq p1, v0, :cond_0

    .line 591
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setLastInSection(Z)V

    .line 593
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setLastInSection(Z)V

    :cond_0
    return-void
.end method

.method public setNormalBackgroundVisibilityAmount(F)V
    .locals 0

    .line 532
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    return-void
.end method

.method public setOverrideTintColor(IF)V
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDark:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 621
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    .line 622
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideAmount:F

    .line 623
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result p1

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz p1, :cond_1

    .line 626
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/high16 v0, 0x437f0000    # 255.0f

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedAlpha:I

    int-to-float p0, p0

    invoke-static {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDrawableAlpha(I)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDrawableAlpha(I)V

    :goto_0
    return-void
.end method

.method public setRippleAllowed(Z)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setPressedAllowed(Z)V

    return-void
.end method

.method public setTintColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(IZ)V

    return-void
.end method

.method public setTintColor(IZ)V
    .locals 1

    .line 567
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eq p1, v0, :cond_0

    .line 568
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 569
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    :cond_0
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updateBackground()V
    .locals 6

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_2

    .line 749
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_6

    .line 752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isGroupExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 753
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz v0, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    .line 754
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-nez v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_2

    .line 758
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setAlpha(F)V

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 763
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    .line 765
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 766
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 765
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    return-void
.end method

.method protected updateBackgroundAlpha(F)V
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 734
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 735
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 737
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setAlpha(F)V

    return-void
.end method

.method protected updateBackgroundClipping()V
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isChildInGroup()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBottomAmountClips(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isChildInGroup()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBottomAmountClips(Z)V

    return-void
.end method

.method protected updateBackgroundColors()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateColors()V

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    return-void
.end method

.method protected updateBackgroundTint()V
    .locals 1

    const/4 v0, 0x0

    .line 635
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    return-void
.end method
