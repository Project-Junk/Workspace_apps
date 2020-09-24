.class public Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;
.super Ljava/lang/Object;
.source "CirCleBatteryController.java"


# static fields
.field private static final CIRCLE_HIDE:I = 0x0

.field private static final CIRCLE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CirCleBatteryController"

.field private static final TYPE_HIDE_SHOW_BATTERY_PERCENT:I = 0x0

.field private static final TYPE_SHOW_BATTERY_PERCENT_IN:I = 0x1

.field private static volatile sInstance:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;


# instance fields
.field private mBatterPercentShow:Z

.field private mBatteryChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

.field private mBatteryEstimatesLastUpdateTimeObserver:Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;

.field private mCenterClock:Landroid/view/View;

.field private mCirCleBatteryLayout:Landroid/view/View;

.field mCircleBatterSwitchObserver:Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;

.field private mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

.field private mContext:Landroid/content/Context;

.field mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field private mHeadsUpShow:Z

.field private mIsCircleBatterySwitchOn:Z

.field private mIsFromDisable:Z

.field private mIsHighlightShow:Z

.field private mIsLastCircleBatterySwitchOn:Z

.field private mIsSmallScreen:Z

.field mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

.field private mNormalBattery:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

.field private mNormalClock:Lcom/coloros/systemui/statusbar/widget/OppoClock;

.field private mOrientation:I

.field private mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mOrientation:I

    .line 80
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$1;-><init>(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    .line 87
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$CirCleBatteryController$6FR8HjpPpL8CIcnuenHLuznBR6s;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$CirCleBatteryController$6FR8HjpPpL8CIcnuenHLuznBR6s;-><init>(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 95
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$2;-><init>(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

    .line 103
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$3;-><init>(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatteryEstimatesLastUpdateTimeObserver:Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;

    .line 201
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$4;-><init>(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatterSwitchObserver:Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;

    .line 262
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    .line 263
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatterSwitchObserver:Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    .line 265
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 264
    invoke-virtual {p1, v0, v2, v1}, Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;->registerForUserSwitch(Landroid/content/Context;IZ)V

    .line 266
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->addListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    .line 267
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 268
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mPowerPercentObserver:Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v1}, Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;->registerForUserSwitch(Landroid/content/Context;IZ)V

    .line 269
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatteryEstimatesLastUpdateTimeObserver:Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v2, v1}, Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;->registerForUserSwitch(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateCircleBatterySwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateBatterPercentVisible()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;
    .locals 2

    .line 70
    sget-object v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->sInstance:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->sInstance:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->sInstance:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 77
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->sInstance:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    return-object p0
.end method

.method private notifyBatteryLayoutChange()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz v0, :cond_0

    .line 222
    new-instance v1, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$CirCleBatteryController$0ezo3JnOKw_YqgFkBPinYdfJXnA;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$CirCleBatteryController$0ezo3JnOKw_YqgFkBPinYdfJXnA;-><init>(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateBatterPercentVisible()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "display_power_percent"

    .line 113
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 115
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatterPercentShow:Z

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBatterPercentVisible: mBatterPercentShow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatterPercentShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHeadsUpShow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mHeadsUpShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Statusbar"

    const-string v3, "CirCleBatteryController"

    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryPercentVisible(Z)V

    return-void
.end method

.method private updateCircleBatterySwitch()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 211
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "display_ring_power_switch"

    .line 210
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 212
    :goto_0
    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eq v0, v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 214
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    .line 215
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    if-nez v0, :cond_1

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateVisibility(Z)V

    .line 216
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateListener()V

    :cond_2
    return-void
.end method

.method private updateListener()V
    .locals 0

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVisibility: show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsCircleBatterySwitchOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "CirCleBatteryController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 242
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsFromDisable:Z

    .line 245
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCenterClockVisible(Z)Z

    .line 246
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCirCleBatterChargeVisible(Z)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryPercentVisible(Z)V

    .line 248
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setNormalBatteryVisible(Z)Z

    goto :goto_0

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsFromDisable:Z

    .line 252
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCenterClockVisible(Z)Z

    .line 253
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCirCleBatterChargeVisible(Z)V

    .line 254
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryPercentVisible(Z)V

    .line 255
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setNormalBatteryVisible(Z)Z

    .line 257
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsLastCircleBatterySwitchOn:Z

    .line 258
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->notifyBatteryLayoutChange()V

    return-void
.end method


# virtual methods
.method public changeDisplayColor(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 357
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->changeDisplayColor(Landroid/graphics/Rect;FIZ)V

    :cond_0
    return-void
.end method

.method public getCircleBatteryLeft()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    const v0, 0x7f0a055b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCircleBatteryRight()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    const v0, 0x7f0a055b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isLeftHole()Z
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->isLeftHole()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$CirCleBatteryController(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDragStateReceiver: action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Statusbar"

    const-string v1, "CirCleBatteryController"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.oppo.intent.action.EXIT_DRAG_WINDOW"

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryViewVisibleBySmallWindow(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$notifyBatteryLayoutChange$1$CirCleBatteryController()V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatteryChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    invoke-interface {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;->onBatteryVisibilityChanged()V

    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    .line 377
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mOrientation:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz v0, :cond_1

    .line 378
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mOrientation:I

    .line 379
    iget p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method public removeBatterChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatteryChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    if-ne p1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->removeBatterChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatteryChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    :cond_1
    return-void
.end method

.method public resetDisplayColor()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->resetDisplayColor()V

    :cond_0
    return-void
.end method

.method public setBatteryChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatteryChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    .line 123
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatteryChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setBatteryChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V

    :cond_0
    return-void
.end method

.method public setCenterClockVisible(Z)Z
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCenterClockVisible: mIsCircleBatterySwitchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsSmallScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsFromDisable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsFromDisable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statusbar"

    const-string v4, "CirCleBatteryController"

    invoke-static {v3, v4, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mHeadsUpShow:Z

    if-nez p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCenterClock:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mNormalClock:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-virtual {p0, v3}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->setVisibility(I)V

    return v2

    .line 320
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCenterClock:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mHeadsUpShow:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsFromDisable:Z

    if-nez p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mNormalClock:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->setVisibility(I)V

    .line 323
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mNormalClock:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->setAlpha(F)V

    :cond_2
    return v1
.end method

.method public setCirCleBatterChargeVisible(Z)V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCirCleBatterChargeVisible: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCircleBatterySwitchOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeadsUpShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mHeadsUpShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSmallScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "CirCleBatteryController"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->isCharging()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mHeadsUpShow:Z

    if-nez p1, :cond_1

    .line 300
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setCircleBatterChargeVisible(I)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setCircleBatterChargeVisible(I)V

    :goto_0
    return-void
.end method

.method public setCircleBatteryPercentVisible(Z)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCircleBatteryPercentVisible: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCircleBatterySwitchOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeadsUpShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mHeadsUpShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSmallScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "CirCleBatteryController"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatterPercentShow:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mHeadsUpShow:Z

    if-nez p1, :cond_1

    .line 283
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setCircleBatteryPercentVisible(I)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setCircleBatteryPercentVisible(I)V

    :goto_0
    return-void
.end method

.method public setCircleBatteryViewVisibleBySmallWindow(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    .line 153
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCircleBatteryViewVisibleBySmallWindow: visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "CirCleBatteryController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setCircleBatteryVisibleByHeadsUp(Z)Z
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCircleBatteryVisibleByHeadsUp: visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsCircleBatterySwitchOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "CirCleBatteryController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mHeadsUpShow:Z

    .line 169
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCirCleBatterChargeVisible(Z)V

    .line 173
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryPercentVisible(Z)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCenterClockVisible(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setCircleBatteryVisibleByHighlight(Z)Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsHighlightShow:Z

    .line 334
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setNormalBatteryVisible(Z)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setClockVisibleByDisable(Z)Z
    .locals 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClockVisibleByDisable: visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsCircleBatterySwitchOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "CirCleBatteryController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-nez v0, :cond_1

    .line 142
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCenterClock:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsFromDisable:Z

    .line 148
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCenterClockVisible(Z)Z

    move-result p0

    return p0
.end method

.method public setDisplayColorInQS()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz v1, :cond_1

    .line 364
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    const v3, 0x7f06031e

    .line 365
    invoke-static {v2, v3}, Lcom/coloros/systemui/common/util/StatusBarUtils;->isDarkColor(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    const v3, 0x7f06031d

    .line 366
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/4 v3, 0x1

    .line 364
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->changeDisplayColor(Landroid/graphics/Rect;FIZ)V

    :cond_1
    return-void
.end method

.method public setNormalBatteryVisible(Z)Z
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mNormalBattery:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNormalBatteryVisible: visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsCircleBatterySwitchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsSmallScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsHighlightShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsHighlightShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statusbar"

    const-string v4, "CirCleBatteryController"

    invoke-static {v3, v4, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsHighlightShow:Z

    if-nez p1, :cond_2

    .line 349
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mNormalBattery:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setVisibility(I)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mNormalBattery:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->setVisibility(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setQsListening(Z)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    if-nez p0, :cond_0

    .line 407
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setQsListening(Z)V

    :cond_0
    return-void
.end method

.method public setUpCircleBatteryView(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0a055b

    .line 385
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 386
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    .line 387
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 388
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    :cond_0
    const p1, 0x7f0a016b

    .line 391
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/widget/OppoClock;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mNormalClock:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    const p1, 0x7f0a00ef

    .line 392
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mNormalBattery:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    const p1, 0x7f0a014e

    .line 393
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCenterClock:Landroid/view/View;

    .line 394
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsSmallScreen:Z

    if-nez p1, :cond_1

    move v1, p2

    :cond_1
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateVisibility(Z)V

    .line 396
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mIsCircleBatterySwitchOn:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mContext:Landroid/content/Context;

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p2, :cond_3

    .line 398
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCirCleBatteryLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mBatteryChangeListener:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    if-eqz p1, :cond_4

    .line 401
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->setBatteryChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V

    :cond_4
    return-void
.end method

.method public updateCircleProgressAnimation(Z)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->mCircleBatteryView:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->updateCircleProgressAnimation(Z)V

    :cond_0
    return-void
.end method
