.class public Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;
    }
.end annotation


# static fields
.field private static final AUTODIM_TIMEOUT_MS:J = 0x8caL

.field private static final DEBUG:Z = false

.field private static final EXTRA_DISABLE2_STATE:Ljava/lang/String; = "disabled2_state"

.field private static final EXTRA_DISABLE_STATE:Ljava/lang/String; = "disabled_state"

.field private static final EXTRA_SYSTEM_UI_VISIBILITY:Ljava/lang/String; = "system_ui_visibility"

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "NavigationBar"


# instance fields
.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private final mAssistContentObserver:Landroid/database/ContentObserver;

.field protected final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mAssistantAvailable:Z

.field private final mAutoDim:Ljava/lang/Runnable;

.field private mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabledFlags1:I

.field private mDisabledFlags2:I

.field public mDisplayId:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mHandler:Landroid/os/Handler;

.field public mHomeBlockedThisTouch:Z

.field private mIsOnDefaultDisplay:Z

.field private mLastLockToAppLongPress:J

.field private mLayoutDirection:I

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavBarMode:I

.field private mNavigationBarMode:I

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRecents:Lcom/android/systemui/recents/Recents;

.field private final mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

.field private final mRotationWatcher:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSystemUiVisibility:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    .line 147
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 166
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 167
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 183
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    .line 185
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 226
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$xnm4oWC06-iZWq-zBbKv8ubGVFU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$xnm4oWC06-iZWq-zBbKv8ubGVFU;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    .line 234
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Wf_FUQzkbSdMD9hXKJaXOD_rVSY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Wf_FUQzkbSdMD9hXKJaXOD_rVSY;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    .line 236
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;

    new-instance v2, Landroid/os/Handler;

    .line 237
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 1092
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dxES00kAyC8r2RmY9FwTYgUhoj8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dxES00kAyC8r2RmY9FwTYgUhoj8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1107
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$JVziusX7tSv19aMDDuLOI-SWKI8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$JVziusX7tSv19aMDDuLOI-SWKI8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Ljava/util/function/Consumer;

    .line 1114
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 256
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 257
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 258
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 259
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 260
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    .line 261
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 262
    invoke-virtual {p6, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sendAssistantAvailability(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn()V

    return-void
.end method

.method private barMode(I)I
    .locals 2

    const/high16 p0, 0x8000000

    and-int/2addr p0, p1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const p0, 0x8000001

    and-int v1, p1, p0

    if-ne v1, p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const p0, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private checkBarModes()V
    .locals 1

    .line 1029
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 1030
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_0

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    :goto_0
    return-void
.end method

.method private computeBarMode(II)I
    .locals 0

    .line 554
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(I)I

    move-result p1

    .line 555
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
    .locals 7

    .line 1140
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e3

    const v4, 0x20840068

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1150
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f110561

    .line 1152
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 1153
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1154
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1156
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d015b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 1162
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1163
    invoke-virtual {v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1164
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;

    invoke-direct {v2, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1179
    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0, v0, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static synthetic lambda$0mmLLxBq7RxotphHQB_RtYb4SpQ(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$RtBTLxltRKo37YrTKiaCXCxwRDg(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$VEqqEZFjg0f3lWOW2BJ66Oo_2aE(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$X9JO9eLzlFoQkYf8XrZG-l2EMsk(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Ylizyb5K7ZQr77j1Ehc8SUjcI6E(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$dtGeJfWz2E4_XAoQgX8peIw4kU8(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$dxES00kAyC8r2RmY9FwTYgUhoj8(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method public static synthetic lambda$eFJm5m1txtISSi8Cx3m3pc8Nvjw(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onVerticalChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$fItMcsneQ6DJLfpJLT-4i0yWwg0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHideClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$oZtQ9jE1OTI8AtitIxsN6ETT4sc(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$y_1OHmWTpLl8uCcO3A0Am620g94(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private notifyNavigationBarScreenOn()V
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method private onAccessibilityClick(Landroid/view/View;)V
    .locals 0

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 912
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 913
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 912
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private onAccessibilityLongClick(Landroid/view/View;)Z
    .locals 1

    .line 917
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 918
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 919
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method private onHideClick(Landroid/view/View;)V
    .locals 1

    .line 1198
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->canShowAndHideNavBar()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1203
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz p1, :cond_1

    .line 1204
    invoke-interface {p1}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->toggleVirtualKeyImmersive()V

    .line 1207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x4891

    const/4 v0, 0x0

    .line 1209
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->onReceive(IZ)V

    :cond_1
    return-void
.end method

.method private onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 699
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 705
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 727
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    goto :goto_0

    .line 709
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNavigationBarUi()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 713
    :cond_3
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_4

    .line 716
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 717
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "NavBar"

    const-string p2, "NavigationBar"

    const-string v1, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    .line 718
    invoke-static {p1, p2, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    return v0

    :cond_4
    :goto_0
    return p2
.end method

.method private onLongPressBackHome(Landroid/view/View;)Z
    .locals 2

    const v0, 0x7f0a00d6

    const v1, 0x7f0a02b5

    .line 799
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressBackRecents(Landroid/view/View;)Z
    .locals 2

    const v0, 0x7f0a00d6

    const v1, 0x7f0a04a3

    .line 803
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressNavigationButtons(Landroid/view/View;II)Z
    .locals 10

    const/4 v0, 0x0

    .line 823
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 824
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 825
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0x7f0a04a3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 829
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 833
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v6, v2, v6

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 868
    :try_start_2
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 870
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 873
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    .line 874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v5

    .line 836
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p2, :cond_2

    if-ne p3, v4, :cond_1

    .line 837
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 838
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 839
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p2

    .line 842
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v5

    goto :goto_1

    :cond_2
    move p2, v0

    .line 849
    :goto_1
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    goto :goto_3

    .line 852
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v6, p2, :cond_4

    move p2, v5

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 868
    :try_start_4
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 870
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 873
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    .line 874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return v5

    .line 859
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, p3, :cond_7

    if-ne p3, v4, :cond_6

    .line 861
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressRecents()Z

    move-result p0

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 863
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    .line 862
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeLongClick(Landroid/view/View;)Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    return p0

    :cond_7
    move p2, v0

    :goto_3
    if-eqz p2, :cond_8

    .line 880
    :try_start_6
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 p0, 0x80

    .line 881
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 p0, 0x2

    .line 882
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    return v5

    :catchall_0
    move-exception p0

    .line 877
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "NavBar"

    const-string p2, "NavigationBar"

    const-string p3, "Unable to reach activity manager"

    .line 886
    invoke-static {p1, p2, p3, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return v0
.end method

.method private onLongPressRecents()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 738
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method private onRecentsClick(Landroid/view/View;)V
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 794
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 795
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->toggleRecentApps()V

    return-void
.end method

.method private onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 776
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    if-nez p2, :cond_0

    .line 778
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 780
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 782
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 783
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onVerticalChanged(Z)V
    .locals 0

    .line 734
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsScrimEnabled(Z)V

    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateHideIconVisibility()V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 672
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$0mmLLxBq7RxotphHQB_RtYb4SpQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$0mmLLxBq7RxotphHQB_RtYb4SpQ;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$VEqqEZFjg0f3lWOW2BJ66Oo_2aE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$VEqqEZFjg0f3lWOW2BJ66Oo_2aE;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    .line 674
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 675
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 678
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 681
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$y_1OHmWTpLl8uCcO3A0Am620g94;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$y_1OHmWTpLl8uCcO3A0Am620g94;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 682
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$8vcstZEv0YyG7EUTK_UrsNSFXRo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$8vcstZEv0YyG7EUTK_UrsNSFXRo;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 685
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Ylizyb5K7ZQr77j1Ehc8SUjcI6E;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Ylizyb5K7ZQr77j1Ehc8SUjcI6E;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$RtBTLxltRKo37YrTKiaCXCxwRDg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$RtBTLxltRKo37YrTKiaCXCxwRDg;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHideButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 692
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$fItMcsneQ6DJLfpJLT-4i0yWwg0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$fItMcsneQ6DJLfpJLT-4i0yWwg0;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    return-void
.end method

.method private refreshLayout(I)V
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_0

    .line 625
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 639
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendAssistantAvailability(Z)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 992
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 993
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 992
    :goto_0
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "NavBar"

    const-string p1, "NavigationBar"

    const-string v0, "Unable to send assistant availability data to launcher"

    .line 995
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private setDisabled2Flags(I)V
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onDisable2FlagChanged(I)V

    :cond_0
    return-void
.end method

.method private shouldDisableNavbarGestures()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

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

.method private updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 4

    const/4 p1, 0x1

    .line 924
    new-array v0, p1, [Z

    .line 925
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getA11yButtonState([Z)I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 929
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 931
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    return-void
.end method

.method private updateScreenPinningGestures()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 649
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    .line 650
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 652
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 654
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$oZtQ9jE1OTI8AtitIxsN6ETT4sc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$oZtQ9jE1OTI8AtitIxsN6ETT4sc;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkNavBarModes()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1046
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    .line 1047
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    :cond_1
    return-void
.end method

.method public disable(IIIZ)V
    .locals 2

    .line 582
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable: , displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state1: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state2: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", animate: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "NavBar"

    const-string v0, "NavigationBar"

    invoke-static {p4, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3600000

    and-int/2addr p1, p2

    .line 596
    iget p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    if-eq p1, p4, :cond_2

    .line 597
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    .line 598
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_1

    .line 599
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    .line 605
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_3

    and-int/lit8 p1, p3, 0x10

    .line 607
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    if-eq p1, p2, :cond_3

    .line 608
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 609
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setDisabled2Flags(I)V

    :cond_3
    return-void
.end method

.method public disableAnimationsDuringHide(J)V
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$i3mhmHWtnMuMGNO528iejYx75q0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$i3mhmHWtnMuMGNO528iejYx75q0;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    const-wide/16 v2, 0x1c0

    add-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 407
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_0

    const-string p1, "  mNavigationBarWindowState="

    .line 408
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mNavigationBarMode="

    .line 410
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p1

    const-string v0, "mNavigationBarView"

    invoke-static {p3, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_0
    const-string p1, "  mNavigationBarView="

    .line 415
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez p0, :cond_1

    const-string p0, "null"

    .line 417
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public finishBarAnimations()V
    .locals 0

    .line 1089
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->finishAnimations()V

    return-void
.end method

.method public getA11yButtonState([Z)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 955
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "accessibility_display_magnification_navbar_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :catch_0
    :cond_0
    move v2, v0

    .line 966
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, -0x1

    .line 967
    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 969
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    move v4, v2

    move v2, v0

    :goto_1
    const/16 v5, 0x10

    if-ltz v3, :cond_3

    .line 970
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 971
    iget v7, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 975
    :cond_1
    iget v7, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v7, :cond_2

    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eq v6, v5, :cond_2

    move v2, v1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 982
    aput-boolean v2, p1, v0

    :cond_4
    if-lt v4, v1, :cond_5

    goto :goto_2

    :cond_5
    move v5, v0

    :goto_2
    const/4 p0, 0x2

    if-lt v4, p0, :cond_6

    const/16 v0, 0x20

    :cond_6
    or-int p0, v5, v0

    return p0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .locals 0

    .line 1085
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 0

    .line 1216
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object p0
.end method

.method getNavigationIconHints()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1185
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    return p0
.end method

.method public isNavBarWindowVisible()Z
    .locals 0

    .line 1037
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSemiTransparent()Z
    .locals 1

    .line 1024
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$disableAnimationsDuringHide$3$NavigationBarFragment()V
    .locals 1

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$new$0$NavigationBarFragment(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$NavigationBarFragment()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAutoDim(Z)V

    return-void
.end method

.method public synthetic lambda$new$4$NavigationBarFragment(Ljava/lang/Integer;)V
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->needsReorient(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onNavigationModeChanged$2$NavigationBarFragment()V
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    .line 1063
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 389
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_1

    .line 398
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    .line 399
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    .line 400
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->refreshLayout(I)V

    .line 402
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 269
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/recents/Recents;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/Recents;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 278
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assistant"

    .line 284
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 283
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    if-eqz p1, :cond_0

    const-string v0, "disabled_state"

    .line 288
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const-string v0, "disabled2_state"

    .line 289
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    const-string v0, "system_ui_visibility"

    .line 290
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 295
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    invoke-virtual {p1, p0, v4}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0159

    const/4 p3, 0x0

    .line 309
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 367
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroyView()V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->destroy()V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->destroy(Landroid/content/Context;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method onHomeLongClick(Landroid/view/View;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 748
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->shouldDisableNavbarGestures()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 751
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xef

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 755
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNavigationBarUi()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 756
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    return v0

    .line 761
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x5

    const-string v2, "invocation_type"

    .line 762
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 765
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 767
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_3

    .line 768
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->abortCurrentGesture()V

    :cond_3
    return v0
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    .line 1053
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 1054
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    .line 1059
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1061
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$NAJe_hU0PesszyJ9wLZ6PYoS4_0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$NAJe_hU0PesszyJ9wLZ6PYoS4_0;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 484
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 485
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result v1

    .line 486
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 487
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object p0

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;

    if-eqz v1, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotationProposal(IIZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 378
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 379
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const-string v1, "disabled_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    const-string v1, "disabled2_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const-string v1, "system_ui_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->saveState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 314
    invoke-super {p0, p1, p2}, Lcom/android/systemui/util/LifecycleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "NavBar"

    const-string v1, "NavigationBar"

    const-string v2, "onViewCreated"

    .line 315
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    .line 321
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/assist/AssistManager;)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$eFJm5m1txtISSi8Cx3m3pc8Nvjw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$eFJm5m1txtISSi8Cx3m3pc8Nvjw;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$X9JO9eLzlFoQkYf8XrZG-l2EMsk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$X9JO9eLzlFoQkYf8XrZG-l2EMsk;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->restoreState(Landroid/os/Bundle;)V

    .line 331
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 332
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowVisible(Z)V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 337
    new-instance v4, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 338
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 339
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn()V

    .line 343
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    const/4 p2, -0x1

    .line 344
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    .line 347
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz p2, :cond_3

    .line 348
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/RotationContextButton;->setListener(Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;)V

    .line 350
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 351
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object p2

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Ljava/util/function/Consumer;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->addRotationCallback(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_4

    .line 356
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->isRotationLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotationLockedAtAngle(I)V

    goto :goto_1

    .line 360
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 362
    :cond_4
    :goto_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setDisabled2Flags(I)V

    return-void
.end method

.method public restoreSystemUiVisibilityState()V
    .locals 7

    .line 508
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->computeBarMode(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 510
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZIZ)V

    return-void
.end method

.method public setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 1020
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    return-void
.end method

.method public setColorNavigationBarController(Lcom/coloros/systemui/navbar/IColorNavigationBarController;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    .line 1192
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz p1, :cond_0

    .line 1193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {p1, p0}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    :cond_0
    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 1

    .line 428
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 432
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-eqz p4, :cond_3

    if-eq p4, p3, :cond_3

    if-eq p4, p1, :cond_3

    const/4 p2, 0x3

    if-eq p4, p2, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_2

    or-int/lit8 v0, v0, 0x1

    :goto_1
    if-eqz p5, :cond_4

    or-int/2addr p1, v0

    goto :goto_2

    :cond_4
    and-int/lit8 p1, v0, -0x3

    .line 452
    :goto_2
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-ne p1, p2, :cond_5

    return-void

    .line 454
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 456
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p2, :cond_6

    .line 457
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 459
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkBarModes()V

    return-void
.end method

.method public setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1014
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 6

    .line 523
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, p3, :cond_0

    return-void

    .line 526
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    not-int p3, p5

    and-int/2addr p3, p1

    and-int p4, p2, p5

    or-int/2addr p3, p4

    xor-int p4, p3, p1

    const/4 p6, 0x0

    if-eqz p4, :cond_6

    .line 531
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 534
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object p4

    const/4 p7, -0x1

    if-nez p4, :cond_1

    move p1, p7

    goto :goto_0

    .line 535
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->computeBarMode(II)I

    move-result p1

    :goto_0
    if-eq p1, p7, :cond_2

    const/4 p3, 0x1

    move p6, p3

    :cond_2
    if-eqz p6, :cond_6

    .line 538
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-eq p3, p1, :cond_5

    const/4 p4, 0x4

    if-eq p3, p4, :cond_3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_4

    .line 541
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideRecentsOnboarding()V

    .line 543
    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 546
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_6
    move v3, p6

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    move v1, p2

    move v2, p5

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZIZ)V

    return-void
.end method

.method public setWindowState(III)V
    .locals 1

    .line 465
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eq p1, p3, :cond_0

    .line 469
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    const/4 p1, -0x1

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    .line 473
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowVisible(Z)V

    .line 476
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public touchAutoDim()V
    .locals 3

    .line 1004
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAutoDim(Z)V

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 0

    .line 1081
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public updateSystemUiStateFlags(I)V
    .locals 6

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getA11yButtonState([Z)I

    move-result p1

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v3, 0x20

    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move v1, v2

    .line 940
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v0, v4}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 942
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    invoke-virtual {p1, v3, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 944
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, 0x2

    .line 945
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v1

    xor-int/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    .line 944
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    return-void
.end method
