.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation


# static fields
.field static final ALTERNATE_CAR_MODE_UI:Z = false

.field static final DEBUG:Z = false

.field static final SLIPPERY_WHEN_DISABLED:Z = true

.field static final TAG:Ljava/lang/String; = "StatusBar/NavBarView"


# instance fields
.field private final mActiveRegion:Landroid/graphics/Region;

.field private mBackButtonBounds:Landroid/graphics/Rect;

.field private mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private final mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDeadZoneConsuming:Z

.field mDisabledFlags:I

.field private mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private final mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

.field private mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

.field private mForceHideHideIcon:Z

.field private mGestureSideGuideBarView:Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

.field private mGestureUpGuideBarView:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

.field private mHideIconFixed:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mHideIconUnfixed:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mHomeButtonBounds:Landroid/graphics/Rect;

.field private mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mHorizontal:Landroid/view/View;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mImeVisible:Z

.field private mInCarMode:Z

.field private mIsImmersiveEnable:Z

.field private mIsVertical:Z

.field private mLayoutTransitionsEnabled:Z

.field mLongClickableAccessibilityButton:Z

.field private mNavBarMode:I

.field mNavigationIconHints:I

.field private mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

.field private final mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mRecentsButtonBounds:Landroid/graphics/Rect;

.field private mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

.field private mRotationButtonBounds:Landroid/graphics/Rect;

.field private mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

.field private mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

.field private mTmpLastConfiguration:Landroid/content/res/Configuration;

.field private mTmpPosition:[I

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field private mUseCarModeUi:Z

.field private mVertical:Landroid/view/View;

.field private mWakeAndUnlocking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 293
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 104
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 114
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 115
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    .line 120
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    .line 121
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    const/4 v1, 0x2

    .line 122
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 136
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    const/4 p2, 0x1

    .line 139
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 146
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mForceHideHideIcon:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveEnable:Z

    .line 235
    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 243
    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 269
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$khIxhJwBd7pJnFFXnq8zupcHrv8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$khIxhJwBd7pJnFFXnq8zupcHrv8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 1293
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$3_rm_LYAhHXvCBhrsX10ry5w8OA;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$3_rm_LYAhHXvCBhrsX10ry5w8OA;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    .line 295
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    .line 296
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 297
    const-class p2, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 298
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p2

    .line 301
    new-instance v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const v2, 0x7f0a0382

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    .line 302
    new-instance v1, Lcom/android/systemui/statusbar/phone/ContextualButton;

    const v3, 0x7f0a02cd

    const v4, 0x7f0807fe

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    .line 304
    new-instance v4, Lcom/android/systemui/statusbar/phone/RotationContextButton;

    const v5, 0x7f0a04c5

    const v6, 0x7f080921

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/RotationContextButton;-><init>(II)V

    .line 306
    new-instance v6, Lcom/android/systemui/statusbar/phone/ContextualButton;

    const v7, 0x7f0a0014

    const v8, 0x7f080917

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    .line 309
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    if-nez p2, :cond_0

    .line 311
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 313
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 315
    const-class v8, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 316
    new-instance v8, Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {v8, p1, v9}, Lcom/android/systemui/recents/RecentsOnboarding;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 317
    new-instance v8, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    invoke-direct {v8, p1}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    .line 318
    new-instance v8, Lcom/android/systemui/statusbar/phone/RotationButtonController;

    const v9, 0x7f120199

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    goto :goto_0

    :cond_1
    move-object p2, v4

    :goto_0
    invoke-direct {v8, p1, v9, p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/RotationButton;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 322
    new-instance p2, Lcom/android/systemui/statusbar/phone/ContextualButton;

    const v8, 0x7f0a00d6

    invoke-direct {p2, v8, v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    .line 324
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 326
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 329
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    .line 330
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v8, 0x7f0a02b5

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v8, 0x7f0a02b7

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v8, 0x7f0a04a3

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    new-instance p2, Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/DeadZone;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 344
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v1, 0x7f0a0420

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    new-instance p2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    .line 348
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/NavBarTintController;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private chooseNavigationIconDrawable(II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawableRes(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private chooseNavigationIconDrawableRes(II)I
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "null"

    .line 1280
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1282
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1282
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private getContextDisplay()Landroid/view/Display;
    .locals 0

    .line 775
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 600
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private getDrawable(IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private getHideIcon(Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 1342
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHideIconUnfixed:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHideIconFixed:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_0
    return-object p0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1164
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "(unknown)"

    return-object p0

    :cond_0
    const-string p0, "(null)"

    return-object p0
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 0

    .line 1116
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz p0, :cond_0

    .line 1117
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    :cond_0
    return-void
.end method

.method private onImeVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 641
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    .line 642
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->setCanShowRotationButton(Z)V

    return-void
.end method

.method private orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 5

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    .line 562
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getRotation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    :cond_2
    const/4 p0, 0x2

    .line 576
    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 577
    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v4

    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v3, v1, [F

    aput v2, v3, v4

    .line 578
    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v1

    .line 576
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 579
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 580
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 581
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 0

    .line 585
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    return-void
.end method

.method private reloadNavIcons()V
    .locals 1

    .line 498
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private resetViews()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSlippery(Z)V
    .locals 1

    const/high16 v0, 0x20000000

    .line 890
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowFlag(IZ)V

    return-void
.end method

.method private setUpSwipeUpOnboarding(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1218
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onConnectedToLauncher()V

    goto :goto_0

    .line 1220
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :goto_0
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 3

    .line 809
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 810
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 812
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const p1, 0x7f120018

    .line 814
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 816
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 820
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :cond_2
    return-void
.end method

.method private setWindowFlag(IZ)V
    .locals 3

    .line 894
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 898
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_4

    .line 899
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ne p2, v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 903
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, p2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 905
    :cond_3
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 907
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 908
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 416
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 428
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 429
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_1

    .line 422
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 423
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    :goto_1
    return p1
.end method

.method private shouldShowHideIcon()Z
    .locals 3

    .line 1380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 1381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/navbar/AppNavigationBarList;->getAppShowHideNavIconList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1382
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1385
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mForceHideHideIcon:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V
    .locals 8

    .line 983
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 985
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 989
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 990
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    .line 991
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 992
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 995
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 996
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v4, p3, v3

    aget v5, p3, v2

    aget p3, p3, v3

    .line 997
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr p3, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v6, v6, v2

    .line 998
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 996
    invoke-virtual {p2, v4, v5, p3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 999
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1001
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1002
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v4, p3, v3

    aget v5, p3, v2

    aget p3, p3, v3

    .line 1003
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p3, v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget p0, p0, v2

    .line 1004
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p0, v2

    .line 1002
    invoke-virtual {p2, v4, v5, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1005
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1006
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateCarMode()Z
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1143
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1146
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    if-eq v0, v2, :cond_1

    .line 1147
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 1153
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    :cond_1
    return v1
.end method

.method private updateCurrentView()V
    .locals 4

    .line 1021
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->resetViews()V

    .line 1022
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setVertical(Z)V

    .line 1025
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 1028
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method private updateIcons(Landroid/content/res/Configuration;)V
    .locals 5

    .line 502
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 503
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 504
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-eq p1, v4, :cond_2

    move v2, v3

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const p1, 0x7f08091a

    .line 507
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    const p1, 0x7f080920

    .line 511
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 512
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->updateIcons()V

    :cond_6
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    .line 515
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_8
    const p1, 0x7f0808a6

    .line 520
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHideIconFixed:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const p1, 0x7f0808a8

    .line 521
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHideIconUnfixed:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    return-void
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 5

    .line 790
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 791
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p0

    const v3, 0x7f0a03d4

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 792
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 795
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 796
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 797
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 798
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_1

    .line 800
    :cond_1
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 801
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 802
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 803
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateOrientationViews()V
    .locals 1

    const v0, 0x7f0a02b8

    .line 1010
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    const v0, 0x7f0a0610

    .line 1011
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    .line 1013
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    return-void
.end method

.method private updateRecentsIcon()V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1039
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "VISIBLE"

    return-object p0

    :cond_0
    const-string p0, "GONE"

    return-object p0

    :cond_1
    const-string p0, "INVISIBLE"

    return-object p0
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 0

    .line 438
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 371
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->onDraw()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p1, "NavigationBarView {"

    .line 1225
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1227
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 1228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1230
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1234
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x1

    if-gt v0, v3, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v4

    .line 1235
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      window: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p1, " OFFSCREEN!"

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 1240
    new-array p1, p1, [Ljava/lang/Object;

    .line 1241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    .line 1242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 1243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    aput-object p3, p1, v1

    const/4 p3, 0x4

    .line 1244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p1, p3

    const-string p3, "      mCurrentView: id=%s (%dx%d) %s %f"

    .line 1240
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    new-array p1, v1, [Ljava/lang/Object;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 1247
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz p3, :cond_3

    const-string p3, "true"

    goto :goto_3

    :cond_3
    const-string p3, "false"

    :goto_3
    aput-object p3, p1, v4

    .line 1249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "      disabled=0x%08x vertical=%s darkIntensity=%.2f"

    .line 1246
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "back"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "home"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "rcnt"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    const-string p3, "rota"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "a11y"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    const-string p1, "    }"

    .line 1257
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->dump(Ljava/io/PrintWriter;)V

    .line 1260
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/RecentsOnboarding;->dump(Ljava/io/PrintWriter;)V

    .line 1261
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->dump(Ljava/io/PrintWriter;)V

    .line 1262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 470
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 458
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getBackDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawableRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 527
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getBackDrawableRes()I
    .locals 2

    const v0, 0x7f080918

    const v1, 0x7f080919

    .line 532
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawableRes(II)I

    move-result p0

    return p0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object p0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method public getFloatingRotationButton()Lcom/android/systemui/statusbar/phone/FloatingRotationButton;
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    return-object p0
.end method

.method public getGestureSideGuideBarView()Lcom/coloros/systemui/navbar/GestureSideGuideBarView;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureSideGuideBarView:Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0271

    .line 1318
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureSideGuideBarView:Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    .line 1320
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureSideGuideBarView:Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    return-object p0
.end method

.method public getGestureUpGuideBarView()Lcom/coloros/systemui/navbar/GestureUpGuideBarView;
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureUpGuideBarView:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0270

    .line 1309
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureUpGuideBarView:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    .line 1311
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureUpGuideBarView:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    return-object p0
.end method

.method public getHideButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 1335
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a0420

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 462
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getHomeDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 539
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 540
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->isOriginalGestureNavigation()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 542
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08091f

    goto :goto_1

    :cond_1
    const v0, 0x7f08091c

    .line 543
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    goto :goto_2

    :cond_2
    const v0, 0x7f08091b

    .line 544
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 545
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 478
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 466
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a02cd

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    return-object p0
.end method

.method public getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 454
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a04a3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;
    .locals 1

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a04c5

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;

    return-object p0
.end method

.method public getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    return-object p0
.end method

.method public getTintController()Lcom/android/systemui/statusbar/phone/NavBarTintController;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    return-object p0
.end method

.method public getVirtualKeyView()Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-nez v0, :cond_0

    const v0, 0x7f0a03d7

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    .line 1304
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    return-object p0
.end method

.method hideRecentsOnboarding()V
    .locals 1

    .line 936
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void
.end method

.method public isOverviewEnabled()Z
    .locals 1

    .line 490
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickStepSwipeUpEnabled()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRecentsButtonDisabled()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 770
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    if-eqz p0, :cond_0

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

.method public isRecentsButtonVisible()Z
    .locals 0

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVertical()Z
    .locals 0

    .line 1055
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    return p0
.end method

.method public synthetic lambda$new$0$NavigationBarView(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6

    .line 272
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 282
    new-array v0, v0, [I

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    .line 284
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 285
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v0, v0, v3

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 285
    invoke-virtual {p1, v2, v4, v1, v0}, Landroid/graphics/Region;->set(IIII)Z

    return-void

    .line 289
    :cond_1
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    return-void

    .line 273
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method public synthetic lambda$new$2$NavigationBarView(Ljava/lang/Boolean;)V
    .locals 1

    .line 1293
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$k9GkUU8fd8MmrH-ljTyEd0q6S0M;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$k9GkUU8fd8MmrH-ljTyEd0q6S0M;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$1$NavigationBarView(Ljava/lang/Boolean;)V
    .locals 0

    .line 1294
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    .line 1295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    return-void
.end method

.method needsReorient(I)Z
    .locals 0

    .line 1017
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1267
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1268
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 1269
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1270
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1269
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setPadding(IIII)V

    .line 1273
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->setInsets(II)V

    .line 1274
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1186
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestApplyInsets()V

    .line 1188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1189
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onNavigationModeChanged(I)V

    .line 1190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->registerListeners()V

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarAttached()V

    .line 1196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method onBarTransition(I)V
    .locals 1

    .line 398
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->onBarTransition(I)V

    if-nez p1, :cond_0

    .line 403
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->stop()V

    goto :goto_0

    .line 409
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->start()V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1123
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode()Z

    move-result p1

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 1128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-nez p1, :cond_0

    .line 1130
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 1131
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1201
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1202
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V

    const/4 v0, 0x0

    .line 1203
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1204
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1205
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->unregisterListeners()V

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarDetached()V

    .line 1212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 964
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    const v0, 0x7f0a03d7

    .line 941
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    const v0, 0x7f0a0270

    .line 946
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureUpGuideBarView:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setNavigationBarView(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    const v0, 0x7f0a0271

    .line 952
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureSideGuideBarView:Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    .line 954
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateOrientationViews()V

    .line 958
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 385
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 969
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 971
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 972
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 974
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 975
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 977
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    .line 978
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/RecentsOnboarding;->setNavBarHeight(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1083
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1084
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-le v1, v0, :cond_0

    .line 1088
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1089
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1090
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eq v3, v4, :cond_1

    .line 1091
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    .line 1096
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1097
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 1100
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1102
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v3, :cond_2

    .line 1103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/common/util/ResourceUtil;->android_dimen_navigation_bar_height_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 1105
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/common/util/ResourceUtil;->android_dimen_navigation_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1107
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/coloros/common/util/ResourceUtil;->android_dimen_navigation_bar_frame_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1109
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v4, v3

    invoke-direct {v6, v2, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    .line 1112
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 2

    .line 913
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    .line 914
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 915
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->onNavigationModeChanged(I)V

    .line 916
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavigationModeChanged(ILandroid/content/Context;)V

    .line 917
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onNavigationModeChanged(I)V

    .line 918
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/RotationContextButton;->onNavigationModeChanged(I)V

    .line 921
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->onNavigationModeChanged(I)V

    .line 922
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 923
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->start()V

    goto :goto_0

    .line 925
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->stop()V

    :goto_0
    return-void
.end method

.method public onPanelExpandedChange()V
    .locals 0

    .line 826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 827
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    .line 830
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateHideIconVisibility()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reorient()V
    .locals 2

    .line 1059
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 1061
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onConfigurationChanged(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    .line 1073
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->resolveLayoutDirection()Z

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1078
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVertical(Z)V

    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 1

    .line 930
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 931
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 932
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const p2, 0x7f0a0014

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    return-void
.end method

.method public setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 3

    .line 646
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v0, p1, :cond_0

    return-void

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisabledFlags: , mDisabledFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disabledFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "StatusBar/NavBarView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    .line 653
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-nez v0, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 657
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 661
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 663
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 614
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 616
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    .line 779
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    .line 620
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 622
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    if-eq v0, v1, :cond_3

    .line 625
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onImeVisibilityChanged(Z)V

    .line 633
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 634
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 376
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 1391
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0

    .line 784
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 785
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    .line 786
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setWindowVisible(Z)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTintController:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->setWindowVisible(Z)V

    .line 609
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onNavigationBarWindowVisibilityChange(Z)V

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1044
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showPinningStartToast()V

    goto :goto_0

    .line 1046
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showPinningExitToast()V

    :goto_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showEscapeToast(Z)V

    return-void
.end method

.method public updateHideIcon(ZZ)V
    .locals 0

    .line 1324
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mForceHideHideIcon:Z

    .line 1325
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveEnable:Z

    .line 1326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveEnable:Z

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideIcon(Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1327
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 1328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateHideIconVisibility()V

    return-void
.end method

.method public updateHideIconVisibility()V
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    .line 1347
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldShowHideIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    goto :goto_0

    .line 1351
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 8

    .line 670
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 672
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 673
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 674
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 675
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_1

    .line 676
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 682
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveEnable:Z

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideIcon(Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 684
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 687
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const v4, 0x7f0a02cd

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    .line 690
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 692
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    .line 696
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNavButtonIcons (b/113914868): home disabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mDisabledFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NavBar"

    const-string v7, "StatusBar/NavBarView"

    invoke-static {v5, v7, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonDisabled()Z

    move-result v4

    if-nez v0, :cond_6

    .line 702
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    .line 708
    :goto_4
    new-instance v5, Landroid/content/pm/OppoPackageManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/content/pm/OppoPackageManager;-><init>(Landroid/content/Context;)V

    .line 709
    invoke-virtual {v5}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result v5

    and-int/2addr v0, v5

    and-int/2addr v3, v5

    and-int/2addr v4, v5

    .line 720
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v5

    .line 721
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v7}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 725
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNavigationBarUi()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 726
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_8

    .line 727
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;->getVirtualKeyCombinationType()I

    move-result v7

    if-eq v7, v6, :cond_7

    .line 728
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;->getVirtualKeyCombinationType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    :cond_7
    move v6, v1

    goto :goto_5

    :cond_8
    move v6, v2

    goto :goto_5

    .line 730
    :cond_9
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v6}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v6

    xor-int/2addr v6, v1

    :goto_5
    or-int/2addr v4, v6

    if-eqz v5, :cond_b

    move v0, v2

    move v3, v0

    goto :goto_6

    :cond_a
    if-eqz v5, :cond_b

    move v0, v2

    move v4, v0

    .line 740
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a03d4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_c

    .line 742
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 744
    invoke-virtual {v5}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 745
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v5, v6}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 752
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getUserSetup()Z

    move-result v5

    if-nez v5, :cond_d

    move v4, v1

    goto :goto_7

    :cond_d
    move v1, v3

    .line 758
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    const/4 v5, 0x4

    if-eqz v0, :cond_e

    move v0, v5

    goto :goto_8

    :cond_e
    move v0, v2

    :goto_8
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 759
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v1, :cond_f

    move v1, v5

    goto :goto_9

    :cond_f
    move v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 760
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v4, :cond_10

    move v2, v5

    :cond_10
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 764
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveEnable:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideIcon(Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method public updateSlippery()V
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 886
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 885
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    return-void
.end method

.method public updateStates()V
    .locals 4

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSwipeUpUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    const-string v3, "updateStates"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 863
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 864
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 870
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 871
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 874
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public updateSystemUiStateFlags()V
    .locals 10

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSystemUiStateFlags: , DISABLE_RECENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DISABLE_HOME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v5, 0x200000

    and-int/2addr v1, v5

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar/NavBarView"

    const-string v6, "NavBar"

    invoke-static {v6, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 840
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 841
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v8

    .line 840
    invoke-virtual {v7, v4, v8, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 842
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/16 v8, 0x80

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v7, v8, v2, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 844
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/16 v7, 0x100

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {v2, v7, v5, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 846
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_6

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSystemUiStateFlags: , DISABLE_PANEL_EXPANDED: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 848
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 847
    invoke-static {v6, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v2, 0x4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 850
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result p0

    if-nez p0, :cond_5

    move v3, v4

    .line 849
    :cond_5
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    :cond_6
    return-void
.end method
