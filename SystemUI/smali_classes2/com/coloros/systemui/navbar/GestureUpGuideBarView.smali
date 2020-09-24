.class public Lcom/coloros/systemui/navbar/GestureUpGuideBarView;
.super Landroid/widget/LinearLayout;
.source "GestureUpGuideBarView.java"


# static fields
.field private static final ALPHA_OPAQUE:I = 0x100

.field private static final ALPHA_SHIFT_NUMBER:I = 0x18

.field private static final BACK_HOME_BACK_LANDSCAPE:F = 0.257f

.field private static final BACK_HOME_BACK_PORTRAIT:F = 0.224f

.field private static final COLOR_BLACK:I = 0x666666

.field private static final COLOR_WHITE:I = 0xffffff

.field private static final DURATION_AUTO_SHALLOW:J = 0x7d0L

.field private static final ONLY_HOME_LANDSCAPE:F = 0.257f

.field private static final ONLY_HOME_PORTRAIT:F = 0.335f

.field private static final TAG:Ljava/lang/String; = "HoverNavigationBarView"


# instance fields
.field private mAutoShallowRunnable:Ljava/lang/Runnable;

.field private mBarHeight:I

.field private mContext:Landroid/content/Context;

.field private mEdge:I

.field private mFollowScreenRotation:Z

.field private mGapEdge:I

.field private mGestureFollowScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mHighLight:Z

.field private mIconDark:Z

.field private mIconHeight:I

.field private mIsLayoutRtl:Z

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mMiddleButtonHeight:I

.field private mMiddleButtonWidth:F

.field private mMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnlyHomeBar:Z

.field private mOrientation:I

.field private mRelativeAlpha:F

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mRotation:I

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private mSideButtonHeight:I

.field private mSideButtonWidth:F

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    .line 66
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    .line 67
    iput v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    .line 68
    iput v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    .line 69
    iput v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    .line 73
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    .line 77
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    .line 79
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    .line 81
    new-instance v2, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$j4m50IKjhjZOGeg3f9dWEU6BhZE;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$j4m50IKjhjZOGeg3f9dWEU6BhZE;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mAutoShallowRunnable:Ljava/lang/Runnable;

    .line 82
    new-instance v2, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$SjhV1-EyujzsjzmukPqFZISRCwA;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$SjhV1-EyujzsjzmukPqFZISRCwA;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v2, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$wgnxoQ7C8hbmqMvBQHSELHcKmVI;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$wgnxoQ7C8hbmqMvBQHSELHcKmVI;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 84
    new-instance v2, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$Jx3Bt6WFPnPiXFZGKK2r4KwzMrc;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$Jx3Bt6WFPnPiXFZGKK2r4KwzMrc;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureFollowScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 85
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getSwipeUpGestureFollowRotationType()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mFollowScreenRotation:Z

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 64
    iput p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    .line 66
    iput p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    .line 67
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    .line 68
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    .line 69
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    .line 73
    iput p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    .line 77
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    .line 79
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    .line 81
    new-instance v1, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$j4m50IKjhjZOGeg3f9dWEU6BhZE;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$j4m50IKjhjZOGeg3f9dWEU6BhZE;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mAutoShallowRunnable:Ljava/lang/Runnable;

    .line 82
    new-instance v1, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$SjhV1-EyujzsjzmukPqFZISRCwA;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$SjhV1-EyujzsjzmukPqFZISRCwA;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v1, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$wgnxoQ7C8hbmqMvBQHSELHcKmVI;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$wgnxoQ7C8hbmqMvBQHSELHcKmVI;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 84
    new-instance v1, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$Jx3Bt6WFPnPiXFZGKK2r4KwzMrc;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$Jx3Bt6WFPnPiXFZGKK2r4KwzMrc;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureFollowScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 85
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getSwipeUpGestureFollowRotationType()I

    move-result v1

    if-ne v1, v0, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mFollowScreenRotation:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 64
    iput p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    const/4 p3, 0x0

    .line 65
    iput p3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    .line 66
    iput p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    .line 67
    iput p3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    .line 68
    iput p3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    .line 69
    iput p3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    .line 73
    iput p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    const/4 p3, 0x1

    .line 74
    iput-boolean p3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    .line 77
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    .line 79
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    .line 81
    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$j4m50IKjhjZOGeg3f9dWEU6BhZE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$j4m50IKjhjZOGeg3f9dWEU6BhZE;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mAutoShallowRunnable:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$SjhV1-EyujzsjzmukPqFZISRCwA;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$SjhV1-EyujzsjzmukPqFZISRCwA;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$wgnxoQ7C8hbmqMvBQHSELHcKmVI;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$wgnxoQ7C8hbmqMvBQHSELHcKmVI;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 84
    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$Jx3Bt6WFPnPiXFZGKK2r4KwzMrc;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$Jx3Bt6WFPnPiXFZGKK2r4KwzMrc;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureFollowScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 85
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getSwipeUpGestureFollowRotationType()I

    move-result v0

    if-ne v0, p3, :cond_0

    move p2, p3

    :cond_0
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mFollowScreenRotation:Z

    .line 101
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getDrawableByViewId(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateDrawables()V

    return-void
.end method

.method private getAnimationView(ZII)Landroid/widget/ImageView;
    .locals 4

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAnimation, isBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gestureDirection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLayoutRtl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "HoverNavigationBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    const v2, 0x7f0a0428

    const v3, 0x7f0a0422

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    :cond_1
    if-ne p3, v1, :cond_2

    .line 502
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    if-ne p3, v0, :cond_3

    .line 504
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    .line 506
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    if-eqz p1, :cond_4

    .line 507
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    .line 509
    :cond_4
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_5
    if-ne p3, v1, :cond_6

    .line 514
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_6
    if-ne p3, v0, :cond_7

    .line 516
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    .line 518
    :cond_7
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    if-eqz p1, :cond_8

    .line 519
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    .line 521
    :cond_8
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    :goto_0
    return-object p0
.end method

.method private getDrawableByViewId(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const v0, 0x7f0a0428

    if-ne p1, v0, :cond_0

    .line 280
    invoke-direct {p0, p2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getLeftDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0a0422

    if-ne p1, v0, :cond_1

    .line 282
    invoke-direct {p0, p2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getRightDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f0a0427

    if-ne p1, v0, :cond_2

    .line 284
    invoke-direct {p0, p2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEdgeDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 236
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p1, 0x7f080db7

    const v0, 0x7f080dc1

    const v1, 0x7f080dcc

    const v2, 0x7f080dce

    if-eqz p2, :cond_6

    .line 240
    iget-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    if-eqz p2, :cond_3

    .line 241
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->isSideNavBar()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 244
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    if-eqz p1, :cond_2

    .line 245
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 247
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 249
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->isSideNavBar()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 250
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 252
    :cond_4
    iget-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    if-eqz p2, :cond_5

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 255
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 258
    :cond_6
    iget-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    if-eqz p2, :cond_9

    .line 259
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->isSideNavBar()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 260
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 262
    :cond_7
    iget-boolean p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    if-eqz p2, :cond_8

    .line 263
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 265
    :cond_8
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 267
    :cond_9
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->isSideNavBar()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 268
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 270
    :cond_a
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    if-eqz p1, :cond_b

    .line 271
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 273
    :cond_b
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getLeftDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getEdgeDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->isSideNavBar()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    const p1, 0x7f080dcd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 217
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    if-eqz p1, :cond_2

    .line 218
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    if-eqz p1, :cond_1

    .line 219
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    const p1, 0x7f080dbe

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 221
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    const p1, 0x7f080dbb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 224
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getRightDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getEdgeDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private hideHighLightAnimation()V
    .locals 13

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideHighLightAnimation() mHighLight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "HoverNavigationBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    const/4 v0, 0x2

    .line 445
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2d0

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    new-instance v1, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v4, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v6, 0x0

    const-wide v8, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 448
    new-instance v1, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$3_IItrMzvmOceG9B4v6NieYZuxg;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$3_IItrMzvmOceG9B4v6NieYZuxg;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    new-instance v1, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$2;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070654

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGapEdge:I

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070652

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mEdge:I

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mBarHeight:I

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070656

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconHeight:I

    const-string v0, "window"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 114
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    .line 117
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    .line 118
    iget p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 120
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    .line 121
    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    .line 123
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    const v0, 0x7f080dbd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    .line 126
    iget p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    if-nez p1, :cond_1

    .line 127
    iget p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    const v0, 0x3eab851f    # 0.335f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    goto :goto_0

    .line 129
    :cond_1
    iget p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    const v0, 0x3e839581    # 0.257f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    const v0, 0x7f080db6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    const v0, 0x7f080dba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    const v0, 0x7f080dc0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    .line 136
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070661

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    .line 139
    iget p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    const v0, 0x3e656042    # 0.224f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    .line 146
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    return-void
.end method

.method private isSideNavBar()Z
    .locals 2

    .line 645
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mFollowScreenRotation:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$SjhV1-EyujzsjzmukPqFZISRCwA(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateButtonViews()V

    return-void
.end method

.method public static synthetic lambda$j4m50IKjhjZOGeg3f9dWEU6BhZE(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->hideHighLightAnimation()V

    return-void
.end method

.method private setIconDark(Landroid/widget/ImageView;Z)V
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIconDark dark:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mRelativeAlpha:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRelativeAlpha:F

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", icon:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NavBar"

    const-string v1, "HoverNavigationBarView"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p2

    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getDrawableByViewId(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private showHighLightAnimation()V
    .locals 13

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showHighLightAnimation() mHighLight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "HoverNavigationBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mAutoShallowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mHighLight:Z

    const/4 v0, 0x2

    .line 412
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 414
    new-instance v1, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v4, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    new-instance v1, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$xQ02algwrr8IsPsM0D0nQy3w-WI;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$xQ02algwrr8IsPsM0D0nQy3w-WI;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    new-instance v1, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$1;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAlpha(Landroid/widget/ImageView;ZF)V
    .locals 2

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr v0, p3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    add-int/2addr v1, v0

    if-eqz p2, :cond_0

    const p2, 0x666666

    add-int v1, v0, p2

    .line 489
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAlpha() alpha:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " tintColor:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NavBar"

    const-string v0, "HoverNavigationBarView"

    invoke-static {p3, v0, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->applyTintImageView(Landroid/content/Context;Landroid/widget/ImageView;I)Landroid/widget/ImageView;

    return-void
.end method

.method private updateButtonViews()V
    .locals 10

    .line 301
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->isSideNavBar()Z

    move-result v0

    const v1, 0x3eab851f    # 0.335f

    const v2, 0x3e656042    # 0.224f

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    .line 303
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    .line 304
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    .line 305
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    if-eqz v0, :cond_0

    .line 306
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    goto :goto_1

    .line 308
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    goto :goto_1

    .line 310
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    .line 317
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    .line 318
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    .line 319
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    if-eqz v0, :cond_3

    .line 320
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    goto :goto_1

    .line 322
    :cond_3
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    goto :goto_1

    .line 311
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    .line 312
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    const v1, 0x3e839581    # 0.257f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    .line 313
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    .line 314
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    .line 326
    :goto_1
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->isSideNavBar()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setOrientation(I)V

    const/4 v0, 0x2

    .line 328
    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOrientation:I

    .line 329
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    const v1, 0x800015

    const v2, 0x800013

    if-ne v0, v3, :cond_6

    .line 330
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    if-eqz v0, :cond_5

    .line 331
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setGravity(I)V

    goto :goto_2

    .line 333
    :cond_5
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setGravity(I)V

    goto :goto_2

    .line 336
    :cond_6
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    if-eqz v0, :cond_7

    .line 337
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setGravity(I)V

    goto :goto_2

    .line 339
    :cond_7
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setGravity(I)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setOrientation(I)V

    const/16 v0, 0x51

    .line 344
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setGravity(I)V

    .line 345
    iput v3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOrientation:I

    .line 348
    :goto_2
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOrientation:I

    const v1, 0x7f0a0422

    const v2, 0x7f0a0427

    const v4, 0x7f0a0428

    const v5, 0x7f0a0426

    const v6, 0x7f0a0425

    const v7, 0x7f0a0424

    const v8, 0x7f0a0423

    const/4 v9, -0x1

    if-ne v0, v3, :cond_9

    .line 349
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mEdge:I

    invoke-direct {p0, v8, v9, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 350
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mEdge:I

    invoke-direct {p0, v7, v9, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 351
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGapEdge:I

    invoke-direct {p0, v6, v9, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 352
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGapEdge:I

    invoke-direct {p0, v5, v9, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 353
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    iget v3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    float-to-int v3, v3

    invoke-direct {p0, v4, v0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 354
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    iget v3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    float-to-int v3, v3

    invoke-direct {p0, v2, v0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 355
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    iget v2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    float-to-int v2, v2

    invoke-direct {p0, v1, v0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    goto :goto_3

    .line 357
    :cond_9
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mEdge:I

    invoke-direct {p0, v8, v0, v9}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 358
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mEdge:I

    invoke-direct {p0, v7, v0, v9}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 359
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGapEdge:I

    invoke-direct {p0, v6, v0, v9}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 360
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGapEdge:I

    invoke-direct {p0, v5, v0, v9}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 361
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    float-to-int v0, v0

    iget v3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    invoke-direct {p0, v4, v0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 362
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonWidth:F

    float-to-int v0, v0

    iget v3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mMiddleButtonHeight:I

    invoke-direct {p0, v2, v0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 363
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonWidth:F

    float-to-int v0, v0

    iget v2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mSideButtonHeight:I

    invoke-direct {p0, v1, v0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateViewLayoutParams(III)V

    .line 365
    :goto_3
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateDrawables()V

    return-void
.end method

.method private updateDrawables()V
    .locals 6

    const v0, 0x7f0a0428

    .line 369
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0427

    .line 370
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0422

    .line 371
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 372
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 374
    iget v3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    invoke-direct {p0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getLeftDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget v3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    invoke-direct {p0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getRightDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget v3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    invoke-direct {p0, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setIconsDark(Z)V

    return-void
.end method

.method private updateViewLayoutParams(III)V
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 207
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 209
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$hideHighLightAnimation$3$GestureUpGuideBarView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 449
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    .line 450
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateIconsTintColor(F)V

    return-void
.end method

.method public synthetic lambda$new$0$GestureUpGuideBarView(Z)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setGestureKeysMode()V

    return-void
.end method

.method public synthetic lambda$new$1$GestureUpGuideBarView(Z)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setScreenFollowRotationMode()V

    return-void
.end method

.method public synthetic lambda$showHighLightAnimation$2$GestureUpGuideBarView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 416
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    .line 417
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateIconsTintColor(F)V

    return-void
.end method

.method public synthetic lambda$startAnimation$4$GestureUpGuideBarView(Landroid/widget/ImageView;ILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 557
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    .line 558
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 559
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mFollowScreenRotation:Z

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 560
    iget p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mBarHeight:I

    iget p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconHeight:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 563
    iget p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mBarHeight:I

    iget p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconHeight:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 565
    iget p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mBarHeight:I

    iget p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconHeight:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 567
    :cond_2
    iget p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mBarHeight:I

    iget p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconHeight:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$startAnimation$5$GestureUpGuideBarView(Landroid/widget/ImageView;ILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 602
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    .line 603
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 605
    iget p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mBarHeight:I

    iget p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconHeight:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 607
    iget p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mBarHeight:I

    iget p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconHeight:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 609
    :cond_1
    iget p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mBarHeight:I

    iget p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconHeight:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 151
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 152
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 153
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureFollowScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setGestureKeysMode()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 160
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 161
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mGestureFollowScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method public onRotationChanged(IZ)V
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRotationChanged rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " oldRotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " forceUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "HoverNavigationBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 169
    :cond_0
    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    .line 170
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 200
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateButtonViews()V

    return-void
.end method

.method public onTouchDown()V
    .locals 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchDown mIconDark:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "HoverNavigationBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->showHighLightAnimation()V

    return-void
.end method

.method public onTouchUpOrCancel()V
    .locals 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchDown mIconDark:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "HoverNavigationBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mAutoShallowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 297
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mAutoShallowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setGestureKeysMode()V
    .locals 2

    .line 187
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getSwipeUpGestureKeysMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 190
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    if-eq v0, v1, :cond_1

    .line 191
    iput-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->init(Landroid/content/Context;)V

    .line 193
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateButtonViews()V

    :cond_1
    return-void
.end method

.method public setIconsDark(Z)V
    .locals 1

    .line 389
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    const v0, 0x7f0a0428

    .line 390
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 391
    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setIconDark(Landroid/widget/ImageView;Z)V

    const v0, 0x7f0a0427

    .line 392
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 393
    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setIconDark(Landroid/widget/ImageView;Z)V

    const v0, 0x7f0a0422

    .line 394
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 395
    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setIconDark(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public setScreenFollowRotationMode()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getSwipeUpGestureFollowRotationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mFollowScreenRotation:Z

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFollowScreenRotation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mFollowScreenRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "HoverNavigationBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateButtonViews()V

    return-void
.end method

.method public startAnimation(III)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 530
    iget v3, v0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRotation:I

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAnimation, keyEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rotation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", direction:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", gestureDirection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mIsLayoutRtl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIsLayoutRtl:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NavBar"

    const-string v6, "HoverNavigationBarView"

    invoke-static {v5, v6, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->onTouchDown()V

    .line 539
    iget-boolean v4, v0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mOnlyHomeBar:Z

    const v5, 0x7f0a0427

    if-eqz v4, :cond_0

    .line 540
    invoke-virtual {v0, v5}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/16 v4, 0xfa2

    if-ne v1, v4, :cond_1

    .line 543
    invoke-virtual {v0, v5}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    const/16 v4, 0xfa3

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    .line 545
    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getAnimationView(ZII)Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/16 v4, 0xfa1

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    .line 547
    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->getAnimationView(ZII)Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    const/4 v2, 0x2

    .line 553
    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x78

    .line 554
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 555
    new-instance v5, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v10, 0x0

    const-wide v12, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x1

    move-object v7, v5

    invoke-direct/range {v7 .. v16}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 556
    new-instance v5, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;

    invoke-direct {v5, v0, v1, v3}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/widget/ImageView;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 572
    new-instance v5, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;

    invoke-direct {v5, v0, v1, v3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/widget/ImageView;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 598
    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0x96

    .line 599
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 600
    new-instance v5, Landroid/view/animation/OppoBezierInterpolator;

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    const-wide v10, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    move-object v7, v5

    invoke-direct/range {v7 .. v16}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 601
    new-instance v5, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$T-mncYEMMnyMBiRLGEThwvhcCr8;

    invoke-direct {v5, v0, v1, v3}, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$T-mncYEMMnyMBiRLGEThwvhcCr8;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/widget/ImageView;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 612
    new-instance v3, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;

    invoke-direct {v3, v0, v1, v4}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateIconsTintColor(F)V
    .locals 3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIconsTintColor alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRelativeAlpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRelativeAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "HoverNavigationBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mRelativeAlpha:F

    const p1, 0x7f0a0428

    .line 475
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 476
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setIconDark(Landroid/widget/ImageView;Z)V

    const p1, 0x7f0a0427

    .line 477
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 478
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setIconDark(Landroid/widget/ImageView;Z)V

    const p1, 0x7f0a0422

    .line 479
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 480
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mIconDark:Z

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setIconDark(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public updateScreenSize(Landroid/util/Size;)V
    .locals 1

    .line 637
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenWidth:F

    .line 638
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->mScreenHeight:F

    return-void
.end method
