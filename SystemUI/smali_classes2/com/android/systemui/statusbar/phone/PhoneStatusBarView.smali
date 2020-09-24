.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"

# interfaces
.implements Lcom/coloros/systemui/statusbar/phone/IPhoneStatusBarViewEx;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_GESTURES:Z = false

.field private static final NO_VALUE:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarView"


# instance fields
.field protected mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBattery:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

.field private mCenterIconSpace:Landroid/view/View;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mCutoutSideNudge:I

.field private mCutoutSpace:Landroid/view/View;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field mIsFullyOpenedPanel:Z

.field private mLastOrientation:I

.field private mMinFraction:F

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    .line 109
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 114
    new-instance p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 115
    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method public static cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/view/Display;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 437
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 438
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 440
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x30

    .line 441
    invoke-static {p0, v2, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 443
    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-gtz p0, :cond_1

    .line 444
    new-instance p0, Landroid/util/Pair;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 446
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-lt p0, v3, :cond_2

    .line 447
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method private updateCutoutLocation(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCenterIconSpace:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v2, 0x30

    invoke-static {v1, v2, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 395
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 396
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 397
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 398
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-void

    .line 383
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCenterIconSpace:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSafeInsets(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 414
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 418
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 419
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p1

    .line 420
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gt v3, v1, :cond_1

    .line 421
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 423
    :cond_1
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-gt v1, p1, :cond_2

    .line 424
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 428
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSafeInsets(Landroid/widget/FrameLayout$LayoutParams;I)V

    return-void

    .line 408
    :cond_3
    :goto_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 409
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private updateScrimFraction()V
    .locals 3

    .line 344
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    .line 345
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 346
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float/2addr v0, v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    return-void
.end method


# virtual methods
.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->requestLayout()V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAttachedToWindow()V

    .line 144
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    :cond_0
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .line 299
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 152
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onDetachedFromWindow()V

    .line 153
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    .line 311
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 312
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    const v0, 0x7f0a00ef

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    const v0, 0x7f0a01db

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    const v0, 0x7f0a0154

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCenterIconSpace:Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 319
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--onInterceptTouchEvent--event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "PhoneStatusBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onPanelCollapsed()V
    .locals 2

    const-string v0, "PhoneStatusBarView"

    const-string v1, "onPanelCollapsed"

    .line 236
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    .line 255
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    :cond_0
    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    .line 228
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 213
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 220
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 266
    sget-boolean v1, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarEvent--onTouchEvent--barConsumedEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    const-string v3, "PhoneStatusBarView"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_2

    .line 286
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onTrackingStarted()V
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStarted()V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 0

    .line 305
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStopped(Z)V

    return-void
.end method

.method public panelEnabled()Z
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    return p0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 0

    .line 336
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPanelExpandedChange()V

    :cond_1
    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 1

    .line 328
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 329
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    :cond_0
    return-void
.end method

.method public removePendingHideExpandedRunnables()V
    .locals 2

    const-string v0, "PhoneStatusBarView"

    const-string v1, "removePendingHideExpandedRunnables"

    .line 247
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method protected updateLayoutForCutout()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 369
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v0

    .line 371
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateCutoutLocation(Landroid/util/Pair;)V

    .line 372
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSafeInsets(Landroid/util/Pair;)V

    return-void
.end method

.method protected updateOrientationAndCutout(I)Z
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    .line 192
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    if-eq v1, p1, :cond_0

    .line 194
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 198
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    move p1, v0

    :cond_1
    return p1
.end method

.method public updateResources()V
    .locals 3

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070331

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
