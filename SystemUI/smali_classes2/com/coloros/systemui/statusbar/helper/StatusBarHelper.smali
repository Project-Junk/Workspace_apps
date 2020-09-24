.class public Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;
.super Ljava/lang/Object;
.source "StatusBarHelper.java"


# static fields
.field private static final SYSETMUI_CTS:Ljava/lang/String; = "android.systemui.cts"

.field private static final TAG:Ljava/lang/String; = "StatusBarHelper"

.field private static volatile sInstance:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;


# instance fields
.field private mCtsGCRunnable:Ljava/lang/Runnable;

.field private mCutoutSpaceWidth:I

.field private mIsHeadsUp:Z

.field private mIsPinningEnter:Z

.field private mIsTestMode:Z

.field private mLastTopAppPkgName:Ljava/lang/String;

.field private mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mPromptView:Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;

.field private mRemote:Landroid/os/IBinder;

.field private mSecurePaymentController:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

.field private mSellModeDisplay:Lcom/coloros/systemui/statusbar/widget/StatusBarTextView;

.field private mServerHandler:Landroid/os/Handler;

.field private mServerMessenger:Landroid/os/Messenger;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarHeight:I

.field private mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mStatusBarHeight:I

    const-string v1, ""

    .line 63
    iput-object v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mLastTopAppPkgName:Ljava/lang/String;

    .line 64
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsTestMode:Z

    .line 65
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsHeadsUp:Z

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mCutoutSpaceWidth:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 70
    new-instance v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$1;-><init>(Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mCtsGCRunnable:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$2;-><init>(Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mServerHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mServerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mServerMessenger:Landroid/os/Messenger;

    .line 78
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->initHandlerThread()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;Landroid/os/Message;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->handlePaymentDetectionMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;
    .locals 2

    .line 86
    sget-object v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->sInstance:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    if-nez v0, :cond_1

    .line 87
    const-class v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->sInstance:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-direct {v1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;-><init>()V

    sput-object v1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->sInstance:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    .line 91
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->sInstance:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    return-object v0
.end method

.method private handlePaymentDetectionMessage(Landroid/os/Message;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSecurePaymentController:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->handlePaymentDetectionMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private initHandlerThread()V
    .locals 2

    .line 285
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatusBarWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 287
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method private notifyClickStatusbar()V
    .locals 2

    .line 258
    new-instance p0, Landroid/app/ColorStatusBarManager;

    invoke-direct {p0}, Landroid/app/ColorStatusBarManager;-><init>()V

    .line 260
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ColorStatusBarManager;->notifyClickTop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyClickTop Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "StatusBarHelper"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static resetInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    sput-object v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->sInstance:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    return-void
.end method

.method private setNotificationVisible(Z)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setNotificationBadgeViewVisible(Z)V

    return-void
.end method

.method private setPromptViewVisible(Z)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mPromptView:Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isPromptMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 169
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mPromptView:Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mPromptView:Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setSellModeDisplay(Z)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSellModeDisplay:Lcom/coloros/systemui/statusbar/widget/StatusBarTextView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 155
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/StatusBarTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mServerMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getCutoutWidth()I
    .locals 2

    .line 140
    iget v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mCutoutSpaceWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    const v1, 0x7f0a01db

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mCutoutSpaceWidth:I

    .line 143
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mCutoutSpaceWidth:I

    return p0
.end method

.method public getIsPinningEnter()Z
    .locals 0

    .line 297
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsPinningEnter:Z

    return p0
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 1

    .line 267
    iget v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mStatusBarHeight:I

    if-gtz v0, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 269
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_dimen_status_bar_height:I

    .line 270
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mStatusBarHeight:I

    .line 273
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mStatusBarHeight:I

    return p0
.end method

.method public initSystemPromptController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0a057c

    .line 123
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mPromptView:Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-direct {v0, p2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mPromptView:Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->addCabllback(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mPromptView:Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->addCabllback(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;)V

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->updatePromptIcon()V

    .line 131
    :goto_0
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 132
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-direct {v0, p2, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSecurePaymentController:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    .line 133
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isVersionSellMode()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0a0518

    .line 134
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/widget/StatusBarTextView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSellModeDisplay:Lcom/coloros/systemui/statusbar/widget/StatusBarTextView;

    :cond_1
    return-void
.end method

.method public isIsHeadsUp()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsHeadsUp:Z

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "StatusBarHelper"

    const-string v2, "onConfigChanged: "

    .line 201
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->onConfigurationChanged()V

    .line 205
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->onConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 281
    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->resetInstance()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 5

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 235
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent begin action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mStatusBarHeight = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StatusBarHelper"

    const-string v4, "Statusbar"

    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-gt p1, v1, :cond_2

    .line 241
    invoke-static {}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isPromptMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    int-to-float p1, v2

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->handleClick(F)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "click statusbar and send broadcast"

    .line 242
    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.color.clicktop"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 249
    invoke-static {p2}, Lcom/coloros/common/util/Util;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "click_status_bar"

    const-string v0, "normal"

    .line 245
    invoke-static {p2, p1, v0, p0}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarClickEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 6

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 210
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent begin action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mStatusBarHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StatusBarHelper"

    const-string v5, "Statusbar"

    invoke-static {v5, v4, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_0
    if-gt p1, v1, :cond_2

    .line 218
    invoke-static {}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isPromptMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    int-to-float p1, v2

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->handleClick(F)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "click statusbar and send broadcast"

    .line 219
    invoke-static {v5, v4, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.color.clicktop"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 226
    invoke-static {p2}, Lcom/coloros/common/util/Util;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "click_status_bar"

    const-string v0, "normal"

    .line 222
    invoke-static {p2, p1, v0, p0}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarClickEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setIsPinningEnter(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsPinningEnter:Z

    return-void
.end method

.method public setNotificationIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-void
.end method

.method public setViewVisibleByDisable(Z)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setPromptViewVisible(Z)V

    .line 161
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setSellModeDisplay(Z)V

    return-void
.end method

.method public setViewVisibleByHeadsUp(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsHeadsUp:Z

    .line 148
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setPromptViewVisible(Z)V

    .line 149
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setNotificationVisible(Z)V

    .line 150
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setSellModeDisplay(Z)V

    return-void
.end method

.method public topAppWindowChanged()V
    .locals 4

    .line 183
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topAppWindowChanged: topAppPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "StatusBarHelper"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mLastTopAppPkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mSystemPromptController:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    if-eqz v1, :cond_0

    .line 187
    iput-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mLastTopAppPkgName:Ljava/lang/String;

    .line 188
    invoke-virtual {v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->checkThirdPartRecord()V

    :cond_0
    const-string v1, "android.systemui.cts"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsTestMode:Z

    if-nez v2, :cond_1

    .line 192
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->updateIconTint(Z)V

    .line 193
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsTestMode:Z

    goto :goto_0

    .line 194
    :cond_1
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsTestMode:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->updateIconTint(Z)V

    .line 196
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mIsTestMode:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public triggerGCImmediate()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mCtsGCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->mCtsGCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
