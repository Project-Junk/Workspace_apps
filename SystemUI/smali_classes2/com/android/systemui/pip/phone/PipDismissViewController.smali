.class public Lcom/android/systemui/pip/phone/PipDismissViewController;
.super Ljava/lang/Object;
.source "PipDismissViewController.java"


# static fields
.field private static final HIDE_TARGET_DURATION:I = 0xe1

.field public static final SHOW_TARGET_DELAY:I = 0x64

.field private static final SHOW_TARGET_DURATION:I = 0x15e


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissView:Landroid/view/View;

.field private mIntersecting:Z

.field private mLoc:[I

.field private mTargetSlop:I

.field private mTargetView:Landroid/view/View;

.field private mVibe:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mLoc:[I

    .line 61
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "vibrator"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mVibe:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/pip/phone/PipDismissViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/WindowManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private expandRect(Landroid/graphics/Rect;I)V
    .locals 2

    .line 182
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 183
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 185
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public createDismissTarget()V
    .locals 11

    .line 70
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    .line 74
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowSize:Landroid/graphics/Point;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 78
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mTargetSlop:I

    .line 84
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0191

    const/4 v4, 0x0

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    .line 86
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 87
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080e64

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xd8

    .line 91
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const v3, 0x7f0a0456

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mTargetView:Landroid/view/View;

    .line 96
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v7, v1, v5

    const/16 v8, 0x7e8

    const/16 v9, 0x118

    const/4 v10, -0x3

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const-string v1, "pip-dismiss-overlay"

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v1, 0x31

    .line 111
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public destroyDismissTarget()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/PipDismissViewController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipDismissViewController$1;-><init>(Lcom/android/systemui/pip/phone/PipDismissViewController;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public showDismissTarget()V
    .locals 2

    .line 152
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 154
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 155
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x15e

    .line 156
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public updateTarget(Landroid/view/View;)Z
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mLoc:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mLoc:[I

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mLoc:[I

    aget v6, v6, v4

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v6, p1

    invoke-direct {v0, v3, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mTargetView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mLoc:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 132
    new-instance p1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mLoc:[I

    aget v3, v2, v1

    aget v5, v2, v4

    aget v2, v2, v1

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mTargetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mLoc:[I

    aget v4, v6, v4

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mTargetView:Landroid/view/View;

    .line 133
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {p1, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    iget v2, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mTargetSlop:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/pip/phone/PipDismissViewController;->expandRect(Landroid/graphics/Rect;I)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mIntersecting:Z

    if-eq p1, v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mVibe:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 142
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mIntersecting:Z

    return p1

    :cond_3
    return v1
.end method
