.class public Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;
.super Ljava/lang/Object;
.source "BlackScreenController.java"

# interfaces
.implements Lcom/coloros/systemui/blackscreen/controller/IBlackScreen;


# static fields
.field public static final DEBUG_QS:Z = false

.field public static final DEBUG_SP:Z = false

.field private static final TAG:Ljava/lang/String; = "BlackScreenController"

.field public static volatile sBlackScreenEnable:Z = false

.field private static volatile sInstance:Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModeOn:Z

.field private mOverlay:Lcom/coloros/systemui/blackscreen/widget/IOverlay;

.field private mStartTime:J

.field private mTopPkg:Ljava/lang/String;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mModeOn:Z

    return-void
.end method

.method private addOverlay(Landroid/content/Context;)V
    .locals 3

    const-string v0, "window"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mWm:Landroid/view/WindowManager;

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mOverlay:Lcom/coloros/systemui/blackscreen/widget/IOverlay;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/coloros/systemui/blackscreen/widget/IOverlay;->getComponent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0053

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mOverlay:Lcom/coloros/systemui/blackscreen/widget/IOverlay;

    .line 117
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mOverlay:Lcom/coloros/systemui/blackscreen/widget/IOverlay;

    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mWm:Landroid/view/WindowManager;

    invoke-interface {p1, v0}, Lcom/coloros/systemui/blackscreen/widget/IOverlay;->init(Landroid/view/WindowManager;)V

    .line 118
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mOverlay:Lcom/coloros/systemui/blackscreen/widget/IOverlay;

    invoke-interface {v0}, Lcom/coloros/systemui/blackscreen/widget/IOverlay;->getComponent()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mOverlay:Lcom/coloros/systemui/blackscreen/widget/IOverlay;

    invoke-interface {p0}, Lcom/coloros/systemui/blackscreen/widget/IOverlay;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;
    .locals 2

    .line 52
    sget-object v0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->sInstance:Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->sInstance:Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    invoke-direct {v1}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;-><init>()V

    sput-object v1, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->sInstance:Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->sInstance:Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    return-object v0
.end method

.method private removeOverlay()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mWm:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mOverlay:Lcom/coloros/systemui/blackscreen/widget/IOverlay;

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v0}, Lcom/coloros/systemui/blackscreen/widget/IOverlay;->getComponent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mWm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mOverlay:Lcom/coloros/systemui/blackscreen/widget/IOverlay;

    invoke-interface {p0}, Lcom/coloros/systemui/blackscreen/widget/IOverlay;->getComponent()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public enableBlackScreenMode(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenController"

    const-string v2, "enableBlackScreenMode()"

    .line 78
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/coloros/common/util/Util;->checkThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$w_mG1XyaqMTDCbje1nYhUIgct7I;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$w_mG1XyaqMTDCbje1nYhUIgct7I;-><init>(Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mModeOn:Z

    if-eqz v0, :cond_1

    return-void

    .line 84
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->addOverlay(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mStartTime:J

    .line 86
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mTopPkg:Ljava/lang/String;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mModeOn:Z

    return-void
.end method

.method public synthetic lambda$enableBlackScreenMode$0$BlackScreenController(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->enableBlackScreenMode(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$stopBlackScreenMode$1$BlackScreenController(Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    return-void
.end method

.method public startBlackScreenMode(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenController"

    const-string v2, "startBlackScreenMode()"

    .line 64
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getCurrentUserContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 69
    :goto_0
    invoke-static {p1}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenStorageUtil;->hasGuideShownRecord(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {p1}, Lcom/coloros/systemui/blackscreen/ui/BlackScreenGuideActivity;->startActivity(Landroid/content/Context;)V

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->enableBlackScreenMode(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public stopBlackScreenMode(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenController"

    const-string v2, "stopBlackScreenMode()"

    .line 92
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/coloros/common/util/Util;->checkThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$5Y5v9JjS77E8InytONzhhzHsNgM;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$5Y5v9JjS77E8InytONzhhzHsNgM;-><init>(Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mModeOn:Z

    if-nez v0, :cond_1

    return-void

    .line 98
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    iget-wide v2, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 100
    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mTopPkg:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenStatisticUtil;->onEnable(Landroid/content/Context;Ljava/lang/String;J)V

    .line 101
    invoke-direct {p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->removeOverlay()V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->mModeOn:Z

    return-void
.end method
