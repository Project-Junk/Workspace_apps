.class public Lcom/coloros/systemui/qs/tiles/SmallScreenTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "SmallScreenTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXIT_DRAG_WINDOW_ACTION:Ljava/lang/String; = "com.oppo.intent.action.EXIT_DRAG_WINDOW"

.field private static final RESET_STATE_DELAY_TIME:I = 0xbb8

.field private static final SUCCESS_DRAG_WINDOW_ACTION:Ljava/lang/String; = "com.oppo.intent.action.SUCCESS_DRAG_WINDOW"


# instance fields
.field private final mCallback:Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;

.field private mClickSuccessed:Z

.field private mClicked:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field private mIsBind:Z

.field private mIsDocked:Z

.field private mIsInFreeFromMode:Z

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mService:Lcom/coloros/exserviceui/IDragControl;

.field private mSetCircleBatteryRunnable:Ljava/lang/Runnable;

.field private mSplitScreenListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 62
    new-instance p1, Lcom/coloros/systemui/qs/tiles/-$$Lambda$SmallScreenTile$EKjcTYzaancQdSDXd04345Od4Bc;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/-$$Lambda$SmallScreenTile$EKjcTYzaancQdSDXd04345Od4Bc;-><init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mSplitScreenListener:Ljava/util/function/Consumer;

    .line 64
    new-instance p1, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;-><init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 82
    new-instance p1, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;-><init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mCallback:Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsBind:Z

    .line 91
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsDocked:Z

    .line 93
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsInFreeFromMode:Z

    .line 95
    iput p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mOrientation:I

    .line 97
    new-instance v0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$2;-><init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mRunnable:Ljava/lang/Runnable;

    .line 111
    sget-object v0, Lcom/coloros/systemui/qs/tiles/-$$Lambda$SmallScreenTile$rHsX_Bbz850KA_gPMz6LAdd26cQ;->INSTANCE:Lcom/coloros/systemui/qs/tiles/-$$Lambda$SmallScreenTile$rHsX_Bbz850KA_gPMz6LAdd26cQ;

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mSetCircleBatteryRunnable:Ljava/lang/Runnable;

    .line 123
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClicked:Z

    .line 339
    new-instance p1, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$3;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$3;-><init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mConn:Landroid/content/ServiceConnection;

    .line 132
    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 134
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mMainHandler:Landroid/os/Handler;

    .line 136
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mSplitScreenListener:Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Ljava/lang/Object;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Ljava/lang/Object;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Lcom/coloros/exserviceui/IDragControl;)Lcom/coloros/exserviceui/IDragControl;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mService:Lcom/coloros/exserviceui/IDragControl;

    return-object p1
.end method

.method static synthetic access$900(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private bindDragWindowService()V
    .locals 5

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.Drag.OppoDragWindowService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 305
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 306
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 312
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 313
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 314
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 316
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 318
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsBind:Z

    .line 320
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    const-string v1, "Statusbar"

    const-string v2, "bindDragWindowService succeed !!"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mService:Lcom/coloros/exserviceui/IDragControl;

    .line 308
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    const-string v0, " bindDragWindowService resolveInfo == null "

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enterSmallScreenMode()V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mService:Lcom/coloros/exserviceui/IDragControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    invoke-interface {v0}, Lcom/coloros/exserviceui/IDragControl;->startDragWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openSmallScreen --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    const-string v2, " openSmallScreen ---mService == null "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    .line 235
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsBind:Z

    if-nez v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->bindDragWindowService()V

    .line 240
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->refreshState()V

    return-void
.end method

.method static synthetic lambda$new$1()V
    .locals 2

    .line 112
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryViewVisibleBySmallWindow(Z)V

    .line 115
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->setSmallScreenMode(Z)V

    :cond_0
    return-void
.end method

.method private unbindDragWindowService()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mService:Lcom/coloros/exserviceui/IDragControl;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 330
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    const-string v1, "Statusbar"

    const-string v2, "unbindDragWindowService succeed !!"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsBind:Z

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mService:Lcom/coloros/exserviceui/IDragControl;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811ec

    .line 365
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 151
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107b7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 4

    .line 161
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsDocked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsInFreeFromMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 166
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    .line 176
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClicked:Z

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->RESET_DO_ANIM:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->refreshState(Ljava/lang/Object;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mSetCircleBatteryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->enterSmallScreenMode()V

    return-void

    .line 168
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchUp failure !! isDocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsDocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mClickSuccessed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " KeyGuardisShowing= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 169
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mIsInFreeFromMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsInFreeFromMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 371
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 372
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClickSuccessed:Z

    .line 204
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mListening:Z

    .line 205
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->bindDragWindowService()V

    .line 209
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mCallback:Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->unbindDragWindowService()V

    .line 215
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mCallback:Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5

    .line 247
    sget-object v0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->RESET_DO_ANIM:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 248
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    return-void

    .line 252
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mOrientation:I

    const/4 p2, 0x1

    .line 254
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsDocked:Z

    .line 256
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsInFreeFromMode:Z

    .line 257
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsDocked:Z

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Landroid/view/OppoWindowManager;

    invoke-direct {v0}, Landroid/view/OppoWindowManager;-><init>()V

    .line 259
    invoke-virtual {v0}, Landroid/view/OppoWindowManager;->isInFreeformMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsInFreeFromMode:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 265
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDockedStackSide  isInFreeformMode  error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmallScreenTile isDocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsDocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " KeyGuardIsShowing= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 268
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mOrientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mIsInFreeFromMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsInFreeFromMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statusbar"

    .line 267
    invoke-static {v3, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsDocked:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mIsInFreeFromMode:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    goto :goto_2

    .line 279
    :cond_3
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v0, 0x7f0811ea

    .line 281
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    .line 283
    :cond_4
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v0, 0x7f0811ec

    .line 284
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    .line 276
    :cond_5
    :goto_2
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v0, 0x7f0811ed

    .line 277
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 289
    :goto_3
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v2

    if-eq v0, v2, :cond_6

    .line 290
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClicked:Z

    if-eqz v0, :cond_6

    .line 291
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    .line 292
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mClicked:Z

    :cond_6
    const p2, 0x7f0811eb

    .line 294
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 296
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1107b7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 297
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 298
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 299
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 156
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isScreenHoveringSupport()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$SmallScreenTile(Ljava/lang/Boolean;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->refreshState()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 141
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
