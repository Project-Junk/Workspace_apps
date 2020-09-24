.class public Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;
.super Lcom/android/internal/widget/ViewPager;
.source "KeyguardSliderLayout.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;,
        Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;
    }
.end annotation


# static fields
.field private static final DOUBLE_DIRECTION:I = 0x3

.field private static final KEYGUARD_INVISIBLE_DELAY:I = 0x50

.field private static final LEFT_TO_RIGHT:I = 0x2

.field private static final PAGE_LIMIT:I = 0x3

.field private static final RIGHT_TO_LEFT:I = 0x1

.field private static final SINGLE_DIRECTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardSliderLayout"

.field private static final UN_LOCK_UPDATE_PAGE_DELAY:I = 0x1f4

.field public static final UPDATE_REASON_DEVICE_PROVISIONED:I = 0x2

.field public static final UPDATE_REASON_DIRECTION_CHANGE:I = 0x3

.field public static final UPDATE_REASON_IGNORE:I = -0x1

.field public static final UPDATE_REASON_MAIN_SWITCH_CHANGE:I = 0x0

.field public static final UPDATE_REASON_USER_SWITCH:I = 0x4

.field public static final UPDATE_REASON_USER_UNLOCK:I = 0x1


# instance fields
.field private mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

.field private mCurrentPage:I

.field private mFirstLayout:Z

.field private mHideSliderLayoutRunnable:Ljava/lang/Runnable;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsPointUp:Z

.field private mKeyguardEngineContainer:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

.field private mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

.field private mKeyguardSliderAdapter:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;

.field private mKeyguardStatusBar:Landroid/view/View;

.field private mLocaleRTL:Z

.field private mLockIconContainer:Landroid/view/ViewGroup;

.field private mMainPagerSelected:Z

.field private mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

.field private mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

.field private mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

.field private mQsExpand:Z

.field private mQsFrame:Landroid/view/View;

.field private mReloadKeyguardSlideLayoutRunnable:Ljava/lang/Runnable;

.field private mResetScrollX:I

.field private mScreenHeight:I

.field private mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScreenWidth:I

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mSelectPage:I

.field private mSlidePagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;",
            ">;"
        }
    .end annotation
.end field

.field private mSliding:Z

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mTransformer:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    .line 706
    new-instance p2, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 814
    new-instance p2, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    .line 882
    new-instance p2, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$3;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$3;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 891
    new-instance p2, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$mZlQOoi1_faH5xDCcA0vOb4A3uw;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$mZlQOoi1_faH5xDCcA0vOb4A3uw;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mHideSliderLayoutRunnable:Ljava/lang/Runnable;

    .line 896
    new-instance p2, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 935
    new-instance p2, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$YulmuTy3lLMk0Z1PKlEKm6NTCh4;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$YulmuTy3lLMk0Z1PKlEKm6NTCh4;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mReloadKeyguardSlideLayoutRunnable:Ljava/lang/Runnable;

    .line 968
    new-instance p2, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$5;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$5;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 138
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;I)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->findPagerByPosition(I)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/BackDropView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Landroid/view/View;FI)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transformViews(Landroid/view/View;FI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Landroid/view/ViewGroup;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mLockIconContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardEngineContainer:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;FI)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transformNotificationPanel(FI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isLaunchingAffordance()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->resetPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->checkKeyguardSlideLayout()V

    return-void
.end method

.method static synthetic access$2100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mHideSliderLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mReloadKeyguardSlideLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$2500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;FI)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->pageScrolled(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;FI)V

    return-void
.end method

.method static synthetic access$2700(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainPagerSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSelectPage:I

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSelectPage:I

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object p0
.end method

.method static synthetic access$602(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSliding:Z

    return p1
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mCurrentPage:I

    return p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mResetScrollX:I

    return p0
.end method

.method private addMainPager()V
    .locals 2

    .line 285
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isKeyguardMainPageEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    check-cast v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->setOnTipsListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;)V

    .line 290
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->detached()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    :cond_2
    :goto_0
    return-void
.end method

.method private addMinusOneScreen()V
    .locals 2

    .line 257
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isKeyguardMinusOneScreenEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz v0, :cond_2

    .line 264
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->detached()V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    :cond_2
    :goto_0
    return-void
.end method

.method private addPictorialPreload()V
    .locals 2

    .line 271
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isKeyguardPictorialEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz v0, :cond_2

    .line 278
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->detached()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    :cond_2
    :goto_0
    return-void
.end method

.method private calCurrentPageIndex(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 318
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    .line 330
    invoke-interface {v4}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->direction()I

    move-result v5

    if-ne v5, v2, :cond_4

    goto :goto_0

    .line 333
    :cond_4
    invoke-interface {v4}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->direction()I

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 334
    :cond_5
    invoke-interface {v4}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->direction()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    move v0, v1

    :cond_8
    :goto_1
    return v0
.end method

.method private cancelDrag(Landroid/view/MotionEvent;)V
    .locals 1

    .line 666
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 667
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 668
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private checkKeyguardSlideLayout()V
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    if-nez v0, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 943
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 944
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isMainSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KeyguardSliderLayout"

    const-string v1, "check pictorial connect!"

    .line 945
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mReloadKeyguardSlideLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 947
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mReloadKeyguardSlideLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mHideSliderLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private findPagerByPosition(I)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private forbidLeftSlide()Z
    .locals 3

    .line 520
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isRtl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 521
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->readyToShow()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 526
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz p0, :cond_1

    .line 527
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->readyToShow()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1

    .line 530
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz p0, :cond_5

    .line 531
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->readyToShow()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1
.end method

.method private forbidRightSlide()Z
    .locals 3

    .line 536
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isRtl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 537
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz p0, :cond_0

    .line 538
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->readyToShow()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardMinusOneScreen:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz v0, :cond_2

    .line 541
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->readyToShow()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 545
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz p0, :cond_3

    .line 546
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->readyToShow()Z

    move-result p0

    if-nez p0, :cond_3

    move p0, v1

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    if-nez v0, :cond_5

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :cond_5
    :goto_3
    return v1
.end method

.method private getAffordanceHelper()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .locals 1

    .line 400
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getAffordanceHelper()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object p0

    return-object p0
.end method

.method private getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    return-object p0
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_0

    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    if-nez v0, :cond_1

    return-void

    .line 687
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 689
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 691
    :cond_3
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 695
    :cond_4
    iget p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStatusBarState:I

    if-ne p1, v2, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    .line 696
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTouchIsClick:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mQsExpand:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchY:F

    .line 699
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 700
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchX:F

    iget p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchY:F

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    :cond_6
    :goto_0
    return-void
.end method

.method private inMainPager()Z
    .locals 0

    .line 440
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainPagerSelected:Z

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 142
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTouchSlop:I

    .line 146
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getScreenSize()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    aget v1, v0, v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenWidth:I

    const/4 v1, 0x1

    .line 148
    aget v0, v0, v1

    iput v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenHeight:I

    .line 150
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStatusBarHeight:I

    .line 152
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 154
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;

    invoke-direct {v0, p0, p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardSliderAdapter:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;

    .line 157
    new-instance v0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTransformer:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;

    .line 158
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 159
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object p1

    invoke-static {p0}, Lcom/android/systemui/util/SysuiLifecycle;->viewAttachLifecycle(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 162
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardSliderAdapter:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 1

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 674
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTouchIsClick:Z

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchX:F

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchY:F

    :cond_0
    return-void
.end method

.method private isKeyguardMainPageEnable()Z
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isKeyguardMinusOneScreenEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isKeyguardPictorialEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mContext:Landroid/content/Context;

    .line 231
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isKeyguardMinusOneScreenEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isKeyguardPictorialEnable()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isMainSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 223
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 224
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchingAffordance()Z
    .locals 1

    .line 558
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getAffordanceHelper()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getAffordanceHelper()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLaunchingAffordance()Z

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

.method private isRtl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isSliding()Z
    .locals 0

    .line 444
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSliding:Z

    return p0
.end method

.method static synthetic lambda$null$2(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)V
    .locals 0

    .line 892
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->hide()V

    return-void
.end method

.method static synthetic lambda$setQsExpanded$1(ZLcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)V
    .locals 0

    .line 436
    invoke-interface {p1, p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->setQsExpanded(Z)V

    return-void
.end method

.method private onHeader()Z
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mQsFrame:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardStatusBar:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 595
    iget v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchX:F

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchX:F

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mQsFrame:Landroid/view/View;

    .line 596
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mQsFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchY:F

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardStatusBar:Landroid/view/View;

    .line 597
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchY:F

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardStatusBar:Landroid/view/View;

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    :cond_0
    return v1
.end method

.method private pageScrolled(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;FI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 753
    invoke-interface {p1, p2, p3}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->onPageScrolled(FI)V

    .line 759
    invoke-interface {p1}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->pagerType()I

    move-result p1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 760
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transformViews(Landroid/view/View;FI)V

    .line 761
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mLockIconContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transformViews(Landroid/view/View;FI)V

    .line 762
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardEngineContainer:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transformViews(Landroid/view/View;FI)V

    .line 763
    invoke-direct {p0, p2, p3}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transformNotificationPanel(FI)V

    .line 764
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isSlidingStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 765
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    :cond_0
    return-void
.end method

.method private resetPosition()V
    .locals 3

    .line 872
    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mCurrentPage:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setCurrentItem(IZ)V

    .line 873
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->pageScrolled(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;FI)V

    .line 874
    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mResetScrollX:I

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->scrollTo(II)V

    .line 875
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onSlidingFinished()V

    .line 877
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onBackFromPictorialFinished()V

    .line 879
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSliding:Z

    return-void
.end method

.method private setChildHeight()V
    .locals 10

    .line 496
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 498
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 504
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 506
    iget v5, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStatusBarHeight:I

    if-le v4, v5, :cond_1

    :try_start_0
    const-string v4, "android.view.View"

    .line 508
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setMeasuredDimensionRaw"

    const/4 v6, 0x2

    .line 509
    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 510
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 511
    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v6, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 513
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sortPages()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    new-instance v1, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$qx8IymMqH5O8RA3UdQf3cJ8kyus;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$qx8IymMqH5O8RA3UdQf3cJ8kyus;-><init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private transKeyguardStatusView(Lcom/android/keyguard/KeyguardStatusView;FI)V
    .locals 3

    .line 807
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 809
    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardStatusView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 810
    invoke-direct {p0, v2, p2, p3}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transformViews(Landroid/view/View;FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformNotificationPanel(FI)V
    .locals 4

    .line 782
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTouchSlop:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendMagazineShowing(Z)V

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendMagazineShowing(Z)V

    .line 788
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 790
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_1

    goto :goto_2

    .line 797
    :cond_1
    instance-of v3, v1, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v3, :cond_2

    .line 798
    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0, v1, p1, p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transKeyguardStatusView(Lcom/android/keyguard/KeyguardStatusView;FI)V

    goto :goto_2

    .line 801
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->transformViews(Landroid/view/View;FI)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private transformViews(Landroid/view/View;FI)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 775
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    int-to-float p0, p3

    .line 776
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private updatePages()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->sortPages()V

    .line 307
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->calCurrentPageIndex(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mCurrentPage:I

    .line 309
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardSliderAdapter:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->setPageData(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 310
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTransformer:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;

    invoke-virtual {p0, v0, v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V

    const/4 v0, 0x3

    .line 311
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setOffscreenPageLimit(I)V

    .line 312
    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mCurrentPage:I

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setCurrentItem(IZ)V

    .line 313
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->pageScrolled(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;FI)V

    .line 314
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mResetScrollX:I

    return-void

    .line 301
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->removeAllViews()V

    const/16 v0, 0x8

    .line 302
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setVisibility(I)V

    .line 303
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardSliderAdapter:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->clearPagers()V

    return-void
.end method


# virtual methods
.method public isEnterPictorialSlidePage()Z
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;

    .line 457
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->isPictorialSlidePagerStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 458
    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStatusBarState:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 460
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isSliding()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->inMainPager()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public synthetic lambda$new$3$KeyguardSliderLayout()V
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    sget-object v1, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$ytez8uHoiQkGx7PsT_vuiBJg80c;->INSTANCE:Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$ytez8uHoiQkGx7PsT_vuiBJg80c;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/16 v0, 0x8

    .line 893
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$new$4$KeyguardSliderLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 935
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->updateSliderPagers(I)V

    return-void
.end method

.method public synthetic lambda$sortPages$0$KeyguardSliderLayout(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)I
    .locals 1

    .line 366
    invoke-interface {p1}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->direction()I

    move-result p1

    invoke-interface {p2}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->direction()I

    move-result p2

    sub-int/2addr p1, p2

    .line 367
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isRtl()Z

    move-result p0

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-lez p1, :cond_0

    return p2

    :cond_0
    if-gez p1, :cond_3

    return v0

    :cond_1
    if-lez p1, :cond_2

    return v0

    :cond_2
    if-gez p1, :cond_3

    return p2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 168
    invoke-super {p0}, Lcom/android/internal/widget/ViewPager;->onAttachedToWindow()V

    .line 169
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 v2, 0x2

    .line 170
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 173
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 175
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->updateSliderPagers(I)V

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mFirstLayout:Z

    return-void
.end method

.method public onBackToKeyguard()V
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz p0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onBackFromPictorialStarted()V

    :cond_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 477
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getScreenSize()[I

    move-result-object p1

    const/4 v0, 0x0

    .line 478
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 479
    aget p1, p1, v1

    .line 480
    iget v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenWidth:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenHeight:I

    if-eq v1, p1, :cond_2

    :cond_0
    const-string v1, "KeyguardSliderLayout"

    const-string v2, "Device resolution changed, update views"

    .line 481
    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iput v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenWidth:I

    .line 483
    iput p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenHeight:I

    .line 484
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setChildHeight()V

    .line 485
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz p1, :cond_1

    .line 486
    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenWidth:I

    iget v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScreenHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->onScreenSizeChanged(II)V

    .line 488
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mTransformer:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mPictorialPreloadView:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz p0, :cond_2

    .line 489
    check-cast p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->access$000(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;Landroid/view/View;F)V

    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 181
    invoke-super {p0}, Lcom/android/internal/widget/ViewPager;->onDetachedFromWindow()V

    .line 182
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 185
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 569
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 570
    :goto_0
    iget v3, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStatusBarState:I

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 571
    :goto_1
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v3

    .line 572
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->isFocusMode()Z

    move-result v4

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 577
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isLaunchingAffordance()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 581
    :cond_2
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 582
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->onHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 585
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    :goto_2
    const-string p0, "Keyguard"

    const-string p1, "KeyguardSliderLayout"

    const-string v0, "onInterceptTouchEvent return false"

    .line 578
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 203
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ViewPager;->onLayout(ZIIII)V

    .line 204
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mFirstLayout:Z

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mResetScrollX:I

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayout mFirstLayout : mResetScrollX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mResetScrollX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardSliderLayout"

    invoke-static {p2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 468
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    const/4 p1, 0x0

    .line 469
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setPaddingRelative(IIII)V

    .line 470
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setChildHeight()V

    return-void
.end method

.method public onPictorialMainSwitchChange(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 957
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->updateSliderPagers(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 608
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v0

    .line 609
    iget v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStatusBarState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 610
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->isFocusMode()Z

    move-result v4

    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 611
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mQsExpand:Z

    if-nez v0, :cond_b

    if-nez v4, :cond_b

    .line 615
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->isLaunchingAffordance()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 620
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    if-nez v0, :cond_2

    .line 623
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getAffordanceHelper()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 624
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getAffordanceHelper()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAffordanAtPosition(FF)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 625
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->cancelDrag(Landroid/view/MotionEvent;)V

    return v2

    .line 629
    :cond_2
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 630
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->onHeader()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 631
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->cancelDrag(Landroid/view/MotionEvent;)V

    return v2

    .line 635
    :cond_3
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    const/4 v1, 0x2

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    goto :goto_1

    .line 642
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mInitialTouchX:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_1

    .line 650
    :cond_6
    iput-boolean v3, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mIsPointUp:Z

    goto :goto_1

    .line 639
    :cond_7
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mIsPointUp:Z

    .line 655
    :goto_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mIsPointUp:Z

    if-eqz v0, :cond_8

    .line 656
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_8
    if-ne v2, v3, :cond_9

    .line 657
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->forbidLeftSlide()Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    :cond_9
    if-ne v2, v1, :cond_a

    .line 659
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->forbidRightSlide()Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    .line 662
    :cond_a
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_b
    :goto_2
    const-string v0, "Keyguard"

    const-string v1, "KeyguardSliderLayout"

    const-string v3, "onTouchEvent return false"

    .line 616
    invoke-static {v0, v1, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->cancelDrag(Landroid/view/MotionEvent;)V

    return v2
.end method

.method public setCurrentItem(I)V
    .locals 5

    .line 343
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 344
    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mCurrentPage:I

    if-ne v0, p1, :cond_2

    .line 346
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    .line 347
    iget v4, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mCurrentPage:I

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-interface {v2, v3}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->onPageSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_1
    iput-boolean v3, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainPagerSelected:Z

    :cond_2
    return-void
.end method

.method public setLayoutAlpha(F)V
    .locals 2

    .line 423
    iget v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 429
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mMainSliderPager:Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz p0, :cond_2

    .line 430
    invoke-interface {p0, p1}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->setProcessY(F)V

    :cond_2
    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 435
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mQsExpand:Z

    .line 436
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    new-instance v0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$fHbUdqqZbJaJ7FAYjGjjUo8VF_E;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$fHbUdqqZbJaJ7FAYjGjjUo8VF_E;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method public setStatusBarWindowView(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 1

    const v0, 0x7f0a0407

    .line 386
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v0, 0x7f0a040d

    .line 387
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const v0, 0x7f0a00d7

    .line 388
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BackDropView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    const v0, 0x7f0a0363

    .line 389
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mLockIconContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0310

    .line 390
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardEngineContainer:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    .line 391
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v0, 0x7f0a0491

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mQsFrame:Landroid/view/View;

    .line 392
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v0, 0x7f0a0303

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mKeyguardStatusBar:Landroid/view/View;

    return-void
.end method

.method public updateSliderPagers(I)V
    .locals 4

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardSliderLayout#updateSliderPagers"

    .line 235
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderPagers reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardSliderLayout"

    invoke-static {v2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 242
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->addMinusOneScreen()V

    .line 245
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->addPictorialPreload()V

    .line 248
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->addMainPager()V

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderPagers : mSlidePagers = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->mSlidePagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->updatePages()V

    .line 252
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
