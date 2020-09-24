.class public Lcom/color/support/widget/ColorLoadProgress;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "ColorLoadProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorLoadProgress$SavedState;,
        Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;,
        Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SET:[I

.field public static final DEFAULT_UP_OR_DOWN:I = 0x0

.field private static final FAIL_SET:[I

.field private static final ING_SET:[I

.field public static final INSTALL_HAVE_GIFT:I = 0x4

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xa

.field public static final UPING_OR_DOWNING:I = 0x1

.field public static final UP_OR_DOWN_FAIL:I = 0x3

.field public static final UP_OR_DOWN_WAIT:I = 0x2

.field private static final WAIT_SET:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAccessibilityEventSender:Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;

.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mContext:Landroid/content/Context;

.field protected mIsUpdateWithAnimation:Z

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field public mMax:I

.field private mOnStateChangeListener:Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;

.field private mOnStateChangeWidgetListener:Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;

.field public mProgress:I

.field public mState:I

.field protected mVisualProgress:F

.field private mVisualProgressAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 47
    new-array v1, v0, [I

    sget v2, Lcolor/support/v7/appcompat/R$attr;->color_state_default:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/color/support/widget/ColorLoadProgress;->DEFAULT_SET:[I

    .line 50
    new-array v1, v0, [I

    sget v2, Lcolor/support/v7/appcompat/R$attr;->color_state_wait:I

    aput v2, v1, v3

    sput-object v1, Lcom/color/support/widget/ColorLoadProgress;->WAIT_SET:[I

    .line 53
    new-array v1, v0, [I

    sget v2, Lcolor/support/v7/appcompat/R$attr;->color_state_fail:I

    aput v2, v1, v3

    sput-object v1, Lcom/color/support/widget/ColorLoadProgress;->FAIL_SET:[I

    .line 56
    new-array v0, v0, [I

    sget v1, Lcolor/support/v7/appcompat/R$attr;->color_state_ing:I

    aput v1, v0, v3

    sput-object v0, Lcom/color/support/widget/ColorLoadProgress;->ING_SET:[I

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/color/support/widget/ColorLoadProgress;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 89
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "ColorLoadProgress"

    .line 60
    iput-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/color/support/widget/ColorLoadProgress;->DEBUG:Z

    .line 73
    iput-boolean v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mIsUpdateWithAnimation:Z

    .line 94
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 95
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress_colorState:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 96
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress_colorDefaultDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress_colorProgress:I

    iget v1, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->setProgress(I)V

    .line 101
    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    .line 102
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadProgress;->init()V

    .line 105
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 106
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1
    const-string p2, "accessibility"

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 438
    iput v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    const/16 v0, 0x64

    .line 439
    iput v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mMax:I

    return-void
.end method

.method private refreshProgressWithAnim()V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    .line 557
    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgress:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    .line 558
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 559
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/color/support/widget/ColorLoadProgress;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 560
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorLoadProgress$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorLoadProgress$1;-><init>(Lcom/color/support/widget/ColorLoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 567
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorLoadProgress$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorLoadProgress$2;-><init>(Lcom/color/support/widget/ColorLoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mAccessibilityEventSender:Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;-><init>(Lcom/color/support/widget/ColorLoadProgress;Lcom/color/support/widget/ColorLoadProgress$1;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mAccessibilityEventSender:Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mAccessibilityEventSender:Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/ColorLoadProgress;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 2

    .line 467
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    .line 469
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getDrawableState()[I

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 472
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->invalidate()V

    :cond_0
    return-void
.end method

.method public getMax()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mMax:I

    return v0
.end method

.method public getMax(I)I
    .locals 0

    .line 210
    iget p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mMax:I

    return p1
.end method

.method public getProgress()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mState:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 483
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->jumpDrawablesToCurrentState()V

    .line 484
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 449
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 450
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 451
    sget-object v1, Lcom/color/support/widget/ColorLoadProgress;->DEFAULT_SET:[I

    invoke-static {p1, v1}, Lcom/color/support/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 454
    sget-object v0, Lcom/color/support/widget/ColorLoadProgress;->ING_SET:[I

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 457
    sget-object v0, Lcom/color/support/widget/ColorLoadProgress;->WAIT_SET:[I

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 460
    sget-object v0, Lcom/color/support/widget/ColorLoadProgress;->FAIL_SET:[I

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    :cond_3
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mAccessibilityEventSender:Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 431
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 444
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onProgressRefresh(I)V
    .locals 0

    .line 393
    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadProgress;->scheduleAccessibilityEventSender()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 544
    check-cast p1, Lcom/color/support/widget/ColorLoadProgress$SavedState;

    .line 546
    invoke-virtual {p1}, Lcom/color/support/widget/ColorLoadProgress$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 547
    iget v0, p1, Lcom/color/support/widget/ColorLoadProgress$SavedState;->mState:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    .line 548
    iget p1, p1, Lcom/color/support/widget/ColorLoadProgress$SavedState;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->setProgress(I)V

    .line 549
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    .line 532
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->setFreezesText(Z)V

    .line 533
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 535
    new-instance v1, Lcom/color/support/widget/ColorLoadProgress$SavedState;

    invoke-direct {v1, v0}, Lcom/color/support/widget/ColorLoadProgress$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 537
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getState()I

    move-result v0

    iput v0, v1, Lcom/color/support/widget/ColorLoadProgress$SavedState;->mState:I

    .line 538
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    iput v0, v1, Lcom/color/support/widget/ColorLoadProgress$SavedState;->mProgress:I

    return-object v1
.end method

.method public performClick()Z
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->toggle()V

    .line 355
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 235
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonResource:I

    if-ne p1, v0, :cond_0

    return-void

    .line 239
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonResource:I

    const/4 p1, 0x0

    .line 242
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonResource:I

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonResource:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 245
    :cond_1
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 258
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 261
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 262
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 263
    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 265
    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->setMinHeight(I)V

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->refreshDrawableState()V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 190
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mMax:I

    if-eq p1, v0, :cond_2

    .line 191
    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mMax:I

    .line 192
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    if-le v0, p1, :cond_1

    .line 193
    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->invalidate()V

    :cond_2
    return-void
.end method

.method public setOnStateChangeListener(Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mOnStateChangeListener:Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;

    return-void
.end method

.method setOnStateChangeWidgetListener(Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mOnStateChangeWidgetListener:Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    .line 124
    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorLoadProgress;->mMax:I

    if-le p1, v1, :cond_1

    move p1, v1

    .line 127
    :cond_1
    iget v1, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    if-eq p1, v1, :cond_2

    .line 128
    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    .line 133
    :cond_2
    iget-boolean v1, p0, Lcom/color/support/widget/ColorLoadProgress;->mIsUpdateWithAnimation:Z

    if-eqz v1, :cond_3

    .line 134
    iput-boolean v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mIsUpdateWithAnimation:Z

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->invalidate()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->onProgressRefresh(I)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 148
    :cond_0
    iget p2, p0, Lcom/color/support/widget/ColorLoadProgress;->mMax:I

    if-le p1, p2, :cond_1

    move p1, p2

    .line 152
    :cond_1
    iget p2, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    if-eq p1, p2, :cond_2

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    .line 153
    iput p2, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgress:F

    .line 154
    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    .line 157
    :cond_2
    iget p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mVisualProgress:F

    iget p2, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadProgress;->refreshProgressWithAnim()V

    :cond_3
    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 282
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mState:I

    if-eq v0, p1, :cond_3

    .line 283
    iput p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mState:I

    .line 284
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadProgress;->refreshDrawableState()V

    .line 296
    iget-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mBroadcasting:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mBroadcasting:Z

    .line 300
    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mOnStateChangeListener:Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;

    if-eqz p1, :cond_1

    .line 301
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mState:I

    invoke-interface {p1, p0, v0}, Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;->onStateChanged(Lcom/color/support/widget/ColorLoadProgress;I)V

    .line 303
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mOnStateChangeWidgetListener:Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;

    if-eqz p1, :cond_2

    .line 304
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mState:I

    invoke-interface {p1, p0, v0}, Lcom/color/support/widget/ColorLoadProgress$OnStateChangeListener;->onStateChanged(Lcom/color/support/widget/ColorLoadProgress;I)V

    :cond_2
    const/4 p1, 0x0

    .line 307
    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mBroadcasting:Z

    :cond_3
    return-void
.end method

.method public toggle()V
    .locals 3

    .line 362
    iget v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 365
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    .line 367
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    return-void

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 369
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorLoadProgress;->setState(I)V

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 478
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
