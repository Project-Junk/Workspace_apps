.class public Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;
.super Landroid/view/View;
.source "OppoSecurePaymentIconView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;
    }
.end annotation


# static fields
.field private static final ALPHA_FULLY_OPAQUE:I = 0xff

.field private static final ALPHA_HALF_TRANSPARENT:I = 0xb2

.field private static final ANIMATION_ROTATION_SCALE:F = 2.0f

.field private static final CIRCLE_STROKE_WIDTH:I = 0x3

.field private static final DURATION_CHECKED_SHOW_RESULT:J = 0xc8L

.field private static final INIT_LARGE_RADIAN_LENGTH:I = 0x8c

.field private static final INIT_LARGE_RADIAN_START:I = 0x6e

.field private static final INIT_SMALL_RADIAN_START:J = 0xaaL

.field private static final LARGE_TIME:J = 0x258L

.field private static final MODE_DETECTED_NO_RISK:I = 0x3

.field private static final MODE_DETECTED_RISK:I = 0x2

.field private static final MODE_DETECTING_START:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final ROTATE_SCALE:J = 0x2d0L

.field private static final ROTATE_TIME:J = 0x4b0L

.field private static final ROTATION_HALF_CIRCLE:I = 0xb4

.field private static final SCALE_ONE:F = 1.0f

.field private static final SCALE_ZERO:F = 0.0f

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_RISK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecurePaymentIconView"


# instance fields
.field private mAnimationTextId:I

.field private mCallBack:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;

.field private mCircleAlpha:I

.field private mCircleFadeAnimator:Landroid/animation/ValueAnimator;

.field private mContentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDarkIntensity:F

.field private mDiameter:I

.field private mDoCircleFadeAnimation:Z

.field private mDoCircleRotateAnimation:Z

.field private mDoRiskRecoveryAnimation:Z

.field private mFillingRiskDrawable:Landroid/graphics/drawable/Drawable;

.field private mFillingSafeDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mIconTint:I

.field private mMode:I

.field private mNoRiskSymbolScale:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mPath:Landroid/graphics/Path;

.field private final mPathInterpolator:Landroid/view/animation/Interpolator;

.field private mRectF:Landroid/graphics/RectF;

.field private mRiskDetection:I

.field private mRiskSymbolScale:F

.field private mRotateAngle:F

.field private mRotateRadian:F

.field private mRotationX:F

.field private mRotationY:F

.field private mShieldAlpha:I

.field private mShieldDrawable:Landroid/graphics/drawable/Drawable;

.field private mStartTime:J

.field private mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

.field private mSyncAnimationTextView:Landroid/widget/TextView;

.field private mSyncAnimationTextVisible:I

.field private final mTintArea:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    const p3, 0x3e4ccccd    # 0.2f

    const p4, 0x3e99999a    # 0.3f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p2, p4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPathInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mTintArea:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mMode:I

    const/4 p3, -0x1

    .line 80
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mIconTint:I

    const/16 p3, 0x13

    .line 86
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDiameter:I

    .line 91
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotateRadian:F

    .line 92
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotateAngle:F

    .line 100
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleRotateAnimation:Z

    .line 101
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleFadeAnimation:Z

    .line 102
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoRiskRecoveryAnimation:Z

    const/16 p3, 0xff

    .line 106
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleAlpha:I

    .line 107
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskSymbolScale:F

    .line 108
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mNoRiskSymbolScale:F

    const/16 p2, 0xb2

    .line 109
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldAlpha:I

    .line 112
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mAnimationTextId:I

    const/16 p2, 0x8

    .line 113
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSyncAnimationTextVisible:I

    .line 114
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskDetection:I

    .line 150
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mMode:I

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoRiskRecoveryAnimation:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldAlpha:I

    return p1
.end method

.method static synthetic access$102(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoRiskRecoveryAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCallBack:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mNoRiskSymbolScale:F

    return p1
.end method

.method static synthetic access$402(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskSymbolScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;F)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->updateSyncAnimationTextView(F)V

    return-void
.end method

.method static synthetic access$602(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleFadeAnimation:Z

    return p1
.end method

.method static synthetic access$702(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleRotateAnimation:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$902(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleAlpha:I

    return p1
.end method

.method private clearAnimations()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 363
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCallBack:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;

    if-eqz p0, :cond_2

    .line 364
    invoke-interface {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;->onAnimationClear()V

    :cond_2
    return-void
.end method

.method private constrain(FFF)F
    .locals 0

    .line 517
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getFirstRotateRadian(F)F
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method private getSecondRotateRadian(F)F
    .locals 1

    .line 512
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPathInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method private init()V
    .locals 6

    .line 156
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDiameter:I

    .line 159
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x3

    int-to-float v3, v2

    add-int/lit8 v4, v0, -0x3

    int-to-float v4, v4

    add-int/lit8 v5, v0, -0x3

    int-to-float v5, v5

    invoke-direct {v1, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRectF:Landroid/graphics/RectF;

    add-int/lit8 v1, v0, 0x0

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/4 v4, 0x0

    int-to-float v5, v4

    add-float/2addr v1, v5

    .line 161
    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotationX:F

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    .line 162
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotationY:F

    .line 163
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPath:Landroid/graphics/Path;

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    .line 165
    new-array v0, v2, [F

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotationX:F

    aput v1, v0, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/high16 v4, 0x43480000    # 200.0f

    aput v4, v0, v1

    .line 166
    new-instance v1, Landroid/graphics/EmbossMaskFilter;

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v1, v0, v4, v5, v3}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080ed7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080ed9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mFillingSafeDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080ed8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mFillingRiskDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080ed6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mContentDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    .line 185
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->initCheckedAnimation()V

    return-void
.end method

.method private initCheckedAnimation()V
    .locals 5

    const/4 v0, 0x2

    .line 228
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

    .line 229
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 230
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleFadeAnimator:Landroid/animation/ValueAnimator;

    .line 283
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$4;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private preparePathAndAngle()V
    .locals 9

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    rem-long/2addr v0, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    long-to-float v2, v0

    const/high16 v3, 0x44960000    # 1200.0f

    div-float v3, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 485
    invoke-direct {p0, v5, v4, v3}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->constrain(FFF)F

    move-result v3

    .line 486
    iget-object v6, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v6, 0x44340000    # 720.0f

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotateAngle:F

    const-wide/16 v6, 0x258

    cmp-long v3, v0, v6

    const/high16 v8, 0x44160000    # 600.0f

    if-gtz v3, :cond_0

    div-float/2addr v2, v8

    .line 488
    invoke-direct {p0, v5, v4, v2}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->constrain(FFF)F

    move-result v0

    .line 489
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getFirstRotateRadian(F)F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotateRadian:F

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v6

    long-to-float v0, v0

    div-float/2addr v0, v8

    .line 491
    invoke-direct {p0, v5, v4, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->constrain(FFF)F

    move-result v0

    .line 493
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getSecondRotateRadian(F)F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotateRadian:F

    .line 496
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 497
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x42dc0000    # 110.0f

    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotateRadian:F

    add-float/2addr v2, p0

    const/high16 v3, 0x430c0000    # 140.0f

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p0, v4

    sub-float/2addr v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private updateSyncAnimationTextView(F)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSyncAnimationTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getUnlimitedViewWidth()I
    .locals 0

    .line 521
    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 120
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mIconTint:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDarkIntensity:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mTintArea:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 122
    :goto_1
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mIconTint:I

    .line 123
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDarkIntensity:F

    .line 124
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->isAttachedToWindow()Z

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 426
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 428
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleRotateAnimation:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleFadeAnimation:Z

    if-eqz v0, :cond_2

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaintColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleRotateAnimation:Z

    if-eqz v0, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->preparePathAndAngle()V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 436
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDiameter:I

    sub-int/2addr v0, v3

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    sub-int/2addr v4, v3

    div-int/2addr v4, v1

    int-to-float v3, v4

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 437
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotateAngle:F

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotationX:F

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotationY:F

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 438
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v0, 0x43340000    # 180.0f

    .line 439
    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotationX:F

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRotationY:F

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 440
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 442
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleRotateAnimation:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 447
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mFillingRiskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mMode:I

    if-ne v3, v1, :cond_3

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 450
    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskSymbolScale:F

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    div-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    div-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 451
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mFillingRiskDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 452
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mFillingRiskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mContentDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 454
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mContentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 458
    :cond_3
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mFillingSafeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoRiskRecoveryAnimation:Z

    if-eqz v3, :cond_5

    .line 460
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 461
    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mNoRiskSymbolScale:F

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    div-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    div-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {p1, v3, v3, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 462
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mFillingSafeDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mFillingSafeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 464
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mContentDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 465
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mContentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 470
    :cond_5
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 471
    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldAlpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 472
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 473
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 477
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->postInvalidate()V

    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 400
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 401
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskDetection:I

    if-nez p1, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p3, 0x4

    const-string p5, ", parentRight = "

    const-string v0, ", right = "

    const-string v1, "SecurePaymentIconView"

    const-string v2, "Statusbar"

    if-ltz p2, :cond_2

    if-le p4, p1, :cond_1

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getVisibility()I

    move-result v3

    if-ne p3, v3, :cond_3

    .line 415
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibility(View.VISIBLE), left = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 419
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setVisibility(I)V

    goto :goto_1

    .line 406
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVisibility(View.INVISIBLE), left = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 388
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mWidth:I

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCallBack(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCallBack:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;

    return-void
.end method

.method public setRiskState(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x1L
        .end annotation
    .end param

    .line 373
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskDetection:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 376
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 379
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSyncAnimationTextViewText(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mAnimationTextId:I

    .line 200
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSyncAnimationTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mAnimationTextId:I

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setSyncAnimationTextViewVisibility(I)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSyncAnimationTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSyncAnimationTextVisible:I

    if-eq v1, p1, :cond_0

    .line 211
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSyncAnimationTextVisible:I

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSyncAnimationView(Landroid/widget/TextView;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSyncAnimationTextView:Landroid/widget/TextView;

    return-void
.end method

.method public startDetectingAnimation()V
    .locals 2

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mStartTime:J

    const/16 v0, 0xff

    .line 218
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleAlpha:I

    const/16 v0, 0xb2

    .line 219
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mShieldAlpha:I

    const/4 v0, 0x1

    .line 220
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mMode:I

    .line 221
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoCircleRotateAnimation:Z

    const v0, 0x7f110611

    .line 222
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewVisibility(I)V

    .line 224
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->invalidate()V

    return-void
.end method

.method public startNoRiskDiscoveryAnimation()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "SecurePaymentIconView"

    const-string v2, "startNoRiskDiscoveryAnimation()"

    .line 338
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->clearAnimations()V

    const/4 v0, 0x3

    .line 340
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mMode:I

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskSymbolScale:F

    .line 342
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mNoRiskSymbolScale:F

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoRiskRecoveryAnimation:Z

    .line 344
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startRiskDiscoveryAnimation()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "SecurePaymentIconView"

    const-string v2, "startRiskDiscoveryAnimation()"

    .line 328
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->clearAnimations()V

    const/4 v0, 0x2

    .line 330
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mMode:I

    const/4 v0, 0x0

    .line 331
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskSymbolScale:F

    .line 332
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mNoRiskSymbolScale:F

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoRiskRecoveryAnimation:Z

    .line 334
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mCircleFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startRiskRecoveryAnimation()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "SecurePaymentIconView"

    const-string v2, "startRiskRecoveryAnimation()"

    .line 348
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->clearAnimations()V

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mDoRiskRecoveryAnimation:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 351
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mRiskSymbolScale:F

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mNoRiskSymbolScale:F

    .line 353
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mSymbolScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateTextResources()V
    .locals 1

    .line 206
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->mAnimationTextId:I

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    return-void
.end method
