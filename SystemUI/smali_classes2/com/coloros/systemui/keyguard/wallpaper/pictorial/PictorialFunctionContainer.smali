.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;
.super Landroid/widget/FrameLayout;
.source "PictorialFunctionContainer.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;
.implements Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;
.implements Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PictorialFunctionContainer"


# instance fields
.field private mBouncerShow:Z

.field private mChargingDismissRunnable:Ljava/lang/Runnable;

.field private mCurrentProcessY:F

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLastFlipFont:I

.field private mLastLocaleRTL:Z

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

.field private mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

.field private mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

.field private mPictorialStateObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

.field private mPreloadViewLoadSuccess:Z

.field private mQsExpanded:Z

.field private mRealScreenHeight:I

.field private mRealScreenWidth:I

.field private mScrolling:Z

.field private mSelect:Z

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserSwitching:Z

.field private mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

.field private mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const/4 v0, -0x1

    .line 82
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mSelect:Z

    .line 489
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 545
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialFunctionContainer$yaHf1sgVaGPOkehqstuGHG7JpD8;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialFunctionContainer$yaHf1sgVaGPOkehqstuGHG7JpD8;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mChargingDismissRunnable:Ljava/lang/Runnable;

    .line 550
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$2;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$2;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialStateObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    .line 560
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$3;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$3;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 87
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateViewState()V

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mBouncerShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateMessageViewState()V

    return-void
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$502(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPreloadViewLoadSuccess:Z

    return p1
.end method

.method private addArrowTipsView()V
    .locals 2

    .line 169
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    .line 170
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateArrowTipsViewLp()V

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPictorialEntryView()V
    .locals 2

    .line 222
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    .line 223
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updatePictorialEntryViewLp()V

    .line 224
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPictorialMessageView()V
    .locals 5

    .line 115
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ef

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getScreenSize()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 120
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 121
    aget v0, v0, v3

    .line 122
    iget v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mRealScreenWidth:I

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mRealScreenHeight:I

    if-eq v0, v2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updatePictorialMessageViewLp(Z)V

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3

    .line 93
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mRealScreenWidth:I

    .line 94
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mRealScreenHeight:I

    .line 96
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 97
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 98
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastLocaleRTL:Z

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastFlipFont:I

    .line 103
    new-instance p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {p1}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->pagerType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->setTag(Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->addPictorialMessageView()V

    .line 107
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->addArrowTipsView()V

    .line 108
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->addPictorialEntryView()V

    return-void
.end method

.method private reCreateView()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->destroy()V

    .line 260
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->removeView(Landroid/view/View;)V

    .line 261
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->addPictorialMessageView()V

    .line 262
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->onWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)V

    .line 263
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateMessageViewState()V

    return-void
.end method

.method private setMessageViewWidth(Landroid/view/View;II)V
    .locals 6

    :try_start_0
    const-string p0, "android.view.View"

    .line 155
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "setMeasuredDimensionRaw"

    const/4 v1, 0x2

    .line 156
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 157
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 158
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateArrowTipImageViewColor()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->getContext()Landroid/content/Context;

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

    .line 195
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setColorFilter(I)V

    :cond_1
    return-void
.end method

.method private updateArrowTipsViewLp()V
    .locals 3

    .line 177
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x15

    .line 179
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 180
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07042b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastLocaleRTL:Z

    if-eqz v2, :cond_0

    const v2, 0x7f080c06

    goto :goto_0

    :cond_0
    const v2, 0x7f080c05

    :goto_0
    invoke-virtual {v1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setImageResource(I)V

    .line 184
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateArrowTipImageViewColor()V

    return-void
.end method

.method private updateLayoutParamsWhenDirectionChange()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updatePictorialMessageViewLp(Z)V

    return-void
.end method

.method private updateMessageViewState()V
    .locals 3

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageViewState, !mBouncerShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mBouncerShow:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", !mKeyguardMonitor.isKeyguardGoingAway() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 324
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyguardMonitor.isShowing() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 325
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", !mShowWiredChargingAnimator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 326
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isChargingAnimatorShow()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowKgdAnim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 327
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->shouldShowKgdAnim()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", !isColorKeyguardLoad = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 328
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStatusBarState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 329
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", !mUserSwitching = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUserSwitching:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInFocusMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->isFocusMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialFunctionContainer"

    .line 322
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mChargingDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 335
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mBouncerShow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 336
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 337
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 338
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 341
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isMessageViewShow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUserSwitching:Z

    if-nez v0, :cond_1

    .line 344
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePictorialEntryViewLp()V
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 233
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07041d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 234
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x35

    .line 236
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, 0x0

    .line 237
    invoke-virtual {v2, v3, v1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 239
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    const v1, 0x7f080c04

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setImageResource(I)V

    .line 240
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePictorialMessageViewLp(Z)V
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070428

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070427

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 141
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07041a

    .line 142
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 143
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07041b

    .line 144
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 145
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    iget-boolean v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastLocaleRTL:Z

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-boolean v5, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastLocaleRTL:Z

    if-eqz v5, :cond_2

    move v0, v2

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v3, v4, v2, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0x50

    .line 148
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->setMessageViewWidth(Landroid/view/View;II)V

    return-void
.end method

.method private updateTipsViewState()V
    .locals 5

    .line 302
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPreloadViewLoadSuccess:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mBouncerShow:Z

    if-nez v1, :cond_0

    .line 303
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->isFocusMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 302
    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setAllowStates(Z)V

    .line 304
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->updateTipsState()V

    .line 307
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPreloadViewLoadSuccess:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mBouncerShow:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mScrolling:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mSelect:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mCurrentProcessY:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 311
    invoke-static {v1, v4}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 312
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mQsExpanded:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 314
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->shouldShowKgdAnim()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 315
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUserSwitching:Z

    if-nez v1, :cond_1

    .line 317
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->isFocusMode()Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    .line 307
    :cond_1
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setAllowStates(Z)V

    .line 318
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->updateTipsState()V

    return-void
.end method

.method private updateViewState()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->applyWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;Z)V

    .line 279
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->destroy()V

    .line 280
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->create()V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->destroy()V

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->create()V

    .line 286
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    return-void
.end method


# virtual methods
.method public attached()V
    .locals 3

    .line 403
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateViewState()V

    .line 404
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 405
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->registerCallback(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V

    .line 406
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialStateObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V

    .line 407
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;)V

    .line 408
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 v2, 0x2

    .line 409
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 410
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public detached()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->destroy()V

    .line 416
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->destroy()V

    .line 417
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->unregisterCallback(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V

    .line 418
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->removeCallback(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;)V

    .line 419
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialStateObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->removeCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V

    .line 420
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 421
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 422
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public direction()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public hide()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    return-void
.end method

.method public synthetic lambda$new$0$PictorialFunctionContainer()V
    .locals 2

    const-string v0, "PictorialFunctionContainer"

    const-string v1, "mChargingDismissRunnable run"

    .line 546
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateMessageViewState()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 245
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 247
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastLocaleRTL:Z

    if-eq v1, v0, :cond_1

    .line 248
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastLocaleRTL:Z

    .line 249
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateLayoutParamsWhenDirectionChange()V

    .line 251
    :cond_1
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    .line 252
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastFlipFont:I

    if-eq p1, v0, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->reCreateView()V

    .line 254
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mLastFlipFont:I

    :cond_2
    return-void
.end method

.method public onMessageViewInfoChanged(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageViewInfo info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialFunctionContainer"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 387
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateMessageViewState()V

    .line 388
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->updateMessageViewInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V

    .line 389
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->updateMessageViewInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V

    .line 390
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 448
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->markShow()V

    .line 449
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->markShow()V

    .line 450
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mScrolling:Z

    .line 451
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 453
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mScrolling:Z

    .line 454
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageScrolled(FI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(Z)V
    .locals 0

    .line 442
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mSelect:Z

    return-void
.end method

.method public onScreenSizeChanged(II)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    if-eqz v0, :cond_2

    .line 212
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mRealScreenWidth:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mRealScreenHeight:I

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updatePictorialMessageViewLp(Z)V

    :cond_2
    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateArrowTipImageViewColor()V

    return-void
.end method

.method public onWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    if-nez v0, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->isSameWallpaperInfo(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 364
    :cond_1
    instance-of v0, p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const/4 v1, 0x0

    const-string v2, "PictorialFunctionContainer"

    if-eqz v0, :cond_2

    .line 365
    move-object v0, p1

    check-cast v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const-string v3, "onWallpaperChange info"

    invoke-static {v2, v3, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->printWallInfo(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    .line 366
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    new-instance v3, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-direct {v3, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    invoke-virtual {v2, v3, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->applyWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;Z)V

    .line 368
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateMessageViewState()V

    goto :goto_0

    :cond_2
    const-string v0, "onWallpaperChange info is null or local or engine"

    .line 370
    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialMessageView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->applyWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;Z)V

    .line 374
    :goto_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    return-void
.end method

.method public onWallpaperColorChange(Landroid/app/WallpaperColors;II)V
    .locals 0

    return-void
.end method

.method public pagerType()I
    .locals 0

    const/16 p0, 0x66

    return p0
.end method

.method public setOnTipsListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;)V
    .locals 1

    .line 351
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    .line 352
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialArrowView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setOnTipsListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;)V

    .line 353
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mPictorialEntryView:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setOnTipsListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;)V

    return-void
.end method

.method public setProcessY(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move p1, v2

    .line 475
    :cond_1
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mCurrentProcessY:F

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 478
    :cond_2
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->setAlpha(F)V

    .line 479
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mCurrentProcessY:F

    .line 480
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 485
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->mQsExpanded:Z

    .line 486
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    return-void
.end method

.method public show()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->updateTipsViewState()V

    return-void
.end method
