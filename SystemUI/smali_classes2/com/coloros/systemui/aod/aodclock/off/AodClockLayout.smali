.class public Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;
.super Landroid/widget/RelativeLayout;
.source "AodClockLayout.java"

# interfaces
.implements Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;


# static fields
.field private static final TAG:Ljava/lang/String; = "AodClockLayout"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAodMediaLayout:Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;

.field private mAodPreventUpdateCount:I

.field private mAodUpdatePosition:[I

.field private mBatteryLayout:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;

.field private mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

.field private mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

.field private mContext:Landroid/content/Context;

.field private mDateLayout:Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;

.field private mFirstShowFromHide:Z

.field private mFirstShowFromSleep:Z

.field private mFirstSuspendDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mHasRegisterAodBroadcast:Z

.field private mIsSupportRamLessAod:Z

.field private mLastTopMargin:I

.field private mNextUpdatePositionCount:I

.field private mNotificationLayout:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

.field private mOnNearState:Z

.field private mShowClockFromAwake:Z

.field private mSuspendDelay:I

.field private final mSuspendSetRunnable:Ljava/lang/Runnable;

.field private mTotalUpdateCount:I

.field private mUpdateCount:I

.field private final mWakeAodReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 96
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 67
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mUpdateCount:I

    .line 68
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    .line 69
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNextUpdatePositionCount:I

    .line 70
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mTotalUpdateCount:I

    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromSleep:Z

    .line 252
    new-instance p3, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)V

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    .line 276
    new-instance p3, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$2;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$2;-><init>(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)V

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mWakeAodReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    .line 98
    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0036

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0a0170

    .line 99
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    const p2, 0x7f0a01de

    .line 100
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mDateLayout:Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;

    const p2, 0x7f0a037f

    .line 101
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodMediaLayout:Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;

    const p2, 0x7f0a00f6

    .line 102
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryLayout:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;

    const p2, 0x7f0a0401

    .line 103
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNotificationLayout:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    .line 104
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->initAodClockHelper(Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;)V

    .line 108
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Aod"

    const-string p2, "AodClockLayout"

    const-string p3, "AOD switch: ON "

    .line 109
    invoke-static {p1, p2, p3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->initAodData()V

    .line 111
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->registerAodBroadcast()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mShowClockFromAwake:Z

    return p1
.end method

.method private hideDisplay()V
    .locals 3

    const-string v0, "AodClockLayout"

    const-string v1, "Aod"

    const-string v2, "hideDisplay: "

    .line 345
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "return because aod is not displayed"

    .line 347
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mUpdateCount:I

    .line 351
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNextUpdatePositionCount:I

    .line 352
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    .line 353
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentHideTime(Z)V

    .line 354
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentDayTotalDisplayTime(Z)V

    .line 355
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mWakeIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNotificationLayout:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->clearNotificationView()V

    .line 359
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    const/4 v0, 0x3

    .line 360
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateAodDozeStateAndStart(I)V

    const/16 v0, 0x8

    .line 361
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->setVisibility(I)V

    .line 362
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->setAodSuspendState()V

    return-void
.end method

.method private initAodData()V
    .locals 2

    .line 116
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    .line 117
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mIsSupportRamLessAod:Z

    .line 118
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    :goto_0
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstSuspendDelay:I

    .line 119
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isMtkPlatform()Z

    move-result v0

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mSuspendDelay:I

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mUpdateCount:I

    .line 121
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    .line 122
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNextUpdatePositionCount:I

    .line 123
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mTotalUpdateCount:I

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getDefaultAreaOrderNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodUpdatePosition:[I

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method private isNeedUpdateClock()Z
    .locals 9

    .line 383
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    const-string v1, "AodClockLayout"

    const-string v2, "Aod"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string p0, "isNeedUpdateClock: return because aod is closed"

    .line 384
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodEnableTimeOpen()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->checkInDuration(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getMillisToBeginTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNeedUpdateClock: suspend and make a alarm to wake up. timeToStartInMillis is "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mWakeIntent:Landroid/app/PendingIntent;

    .line 394
    invoke-virtual {v0, v1, v7, v8, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 396
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    const/4 v0, 0x3

    .line 397
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateAodDozeStateAndStart(I)V

    .line 398
    iput-boolean v4, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromSleep:Z

    const/16 v0, 0x8

    .line 399
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->setAodSuspendState()V

    return v3

    .line 406
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mOnNearState:Z

    if-eqz v0, :cond_2

    const-string p0, "isNeedUpdateClock:  return because aod is on near state"

    .line 407
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    if-nez v0, :cond_3

    return v3

    .line 414
    :cond_3
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->updateInfo()V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedUpdateClock-Battery Status: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->isLowBattery()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->hideDisplay()V

    return v3

    .line 421
    :cond_4
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isIsPreventedScreenBurn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 422
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mShowClockFromAwake:Z

    if-eqz v0, :cond_5

    .line 423
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->resetForceData()V

    .line 424
    iput-boolean v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mShowClockFromAwake:Z

    return v4

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result v0

    if-nez v0, :cond_6

    .line 428
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentHideTime(Z)V

    .line 430
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedUpdateClock: currentHideTime "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getCurrentHideTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " minimumHideTime "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    .line 431
    invoke-static {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getMinimumHideTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " maxUpdateTimes "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    .line 432
    invoke-static {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getMaxUpdateTimes()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getCurrentHideTime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getMinimumHideTime()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_8

    .line 434
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getIsMoving()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 435
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->resetForceData()V

    const-string p0, "isNeedUpdateClock: show clock when moving"

    .line 436
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 439
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isHideFromReset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 440
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getNextRtcTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setExactTimeForAlarm(J)V

    const-string p0, "isNeedUpdateClock: clock not display when hide from reset"

    .line 441
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 445
    :cond_8
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mTotalUpdateCount:I

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getMaxUpdateTimes()I

    move-result v5

    if-lt v0, v5, :cond_9

    .line 446
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getCurrentHideTime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getMinimumHideTime()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_9

    .line 447
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getMinimumHideTime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    .line 448
    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getCurrentHideTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNeedUpdateClock: hide display. it\'s not reached the minimum time forceHideTime "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setHideFromReset(Z)V

    .line 452
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateForceDisappearCount()V

    .line 453
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateForceDisappearTime()V

    .line 454
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getNextRtcTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setExactTimeForAlarm(J)V

    .line 455
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->hideDisplay()V

    return v3

    .line 460
    :cond_9
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getResetUpdateTimes()I

    move-result v5

    if-lt v0, v5, :cond_b

    .line 461
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getIsMoving()Z

    move-result v0

    if-nez v0, :cond_a

    .line 462
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setHideFromReset(Z)V

    .line 463
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getNextRtcTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setExactTimeForAlarm(J)V

    .line 464
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->hideDisplay()V

    const-string p0, "isNeedUpdateClock: hide display to reset update times"

    .line 465
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 468
    :cond_a
    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    :cond_b
    return v4
.end method

.method public static synthetic lambda$8G9WMk9WfkX4zmanWDI7zl6sXg4(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateContentAndPosition()V

    return-void
.end method

.method private registerAodBroadcast()V
    .locals 6

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.aod.WAKEUP_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mWakeAodReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mWakeIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHasRegisterAodBroadcast:Z

    const-string p0, "Aod"

    const-string v0, "AodClockLayout"

    const-string v1, "registerAodBroadcast: with oppo safe permissions"

    .line 294
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetForceData()V
    .locals 2

    const/4 v0, 0x0

    .line 476
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    .line 477
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mTotalUpdateCount:I

    .line 478
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setCurrentHideTime(J)V

    return-void
.end method

.method private unregisterAodBroadcast()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mWakeIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHasRegisterAodBroadcast:Z

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mWakeAodReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHasRegisterAodBroadcast:Z

    :cond_1
    return-void
.end method

.method private updateContentAndPosition()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryLayout:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mDateLayout:Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateContentAndPosition: mUpdateCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mUpdateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNextUpdatePositionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNextUpdatePositionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAodPreventUpdateCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTotalUpdateCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mTotalUpdateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFirstShowFromHide "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromHide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "AodClockLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromHide:Z

    if-nez v0, :cond_1

    .line 225
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    .line 226
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mTotalUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mTotalUpdateCount:I

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateNextPosition()V

    const/4 v0, 0x3

    .line 229
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateAodDozeStateAndStart(I)V

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryLayout:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->updateBatteryLevel(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V

    .line 232
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->updateClock()V

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mDateLayout:Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->updateDate()V

    .line 234
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mUpdateCount:I

    .line 235
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->setAodSuspendState()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLayout()V
    .locals 3

    .line 167
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->isShowClock()Z

    move-result v0

    .line 169
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setVisibility(I)V

    goto :goto_1

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setVisibility(I)V

    .line 175
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableDateMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    .line 176
    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mDateLayout:Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->setVisibility(I)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryLayout:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->setVisibility(I)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result v0

    if-nez v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNotificationLayout:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->setVisibility(I)V

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mIsSupportRamLessAod:Z

    if-nez v0, :cond_5

    .line 186
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->hasMediaSessionNotification()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodMediaLayout:Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->addMetadataCallBack()V

    .line 188
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodMediaLayout:Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateNextPosition()V
    .locals 5

    .line 482
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mUpdateCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 483
    :goto_0
    iget-boolean v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mIsSupportRamLessAod:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    .line 484
    invoke-static {v3}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/common/AodManager;->getScreenState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    .line 485
    invoke-static {v3}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/common/AodManager;->isCurrentNearState()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_4

    .line 486
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromSleep:Z

    if-eqz v0, :cond_8

    .line 488
    :cond_4
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNextUpdatePositionCount:I

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodUpdatePosition:[I

    array-length v3, v3

    rem-int/2addr v0, v3

    .line 489
    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mLastTopMargin:I

    if-nez v3, :cond_5

    .line 490
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodUpdateArea()[I

    move-result-object v3

    aget v3, v3, v2

    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mLastTopMargin:I

    .line 492
    :cond_5
    iget-boolean v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromHide:Z

    if-eqz v3, :cond_6

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mLastTopMargin:I

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    .line 493
    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodUpdateArea()[I

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodUpdatePosition:[I

    aget v0, v4, v0

    aget v0, v3, v0

    .line 494
    :goto_3
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mLastTopMargin:I

    .line 495
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateNextPosition(I)V

    .line 496
    iget-boolean v3, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mIsSupportRamLessAod:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    .line 497
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateAodDozeStateAndStart(I)V

    .line 498
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->updateAodArea(Landroid/content/Context;I)V

    .line 500
    :cond_7
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNextUpdatePositionCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNextUpdatePositionCount:I

    .line 501
    iput-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromSleep:Z

    .line 502
    iput-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromHide:Z

    :cond_8
    return-void
.end method


# virtual methods
.method public hideClock()V
    .locals 1

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mOnNearState:Z

    .line 341
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->hideDisplay()V

    return-void
.end method

.method public onAodClockLayoutDestroy()V
    .locals 1

    .line 129
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->unregisterAodBroadcast()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mClockLayout:Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->onClockLayoutDestroy()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryLayout:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->onBatteryLayoutDestroy()V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNotificationLayout:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->onNotificationLayoutDestroy()V

    .line 141
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodMediaLayout:Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;

    if-eqz p0, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->onMediaLayoutDestroy()V

    :cond_4
    return-void
.end method

.method public onAodDreamingStarted()V
    .locals 0

    return-void
.end method

.method public onAodDreamingStopped()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mUpdateCount:I

    .line 314
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNextUpdatePositionCount:I

    .line 315
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mAodPreventUpdateCount:I

    .line 316
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mTotalUpdateCount:I

    .line 317
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    .line 318
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentDayTotalDisplayTime(Z)V

    .line 319
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setHideFromReset(Z)V

    .line 320
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setCurrentHideTime(J)V

    .line 321
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setCurrentTime(J)V

    .line 322
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/common/AodManager;->setCurrentNearState(Z)V

    return-void
.end method

.method public performTimeUpdate()V
    .locals 4

    .line 194
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->isNeedUpdateClock()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Aod"

    const-string v0, "AodClockLayout"

    const-string v1, "performTimeUpdate: return"

    .line 195
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isFirstTimeInAod()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentDayTotalDisplayTime(Z)V

    .line 208
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mIsSupportRamLessAod:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 209
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateAodDozeStateAndStart(I)V

    .line 211
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateLayout()V

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/aod/aodclock/off/-$$Lambda$AodClockLayout$8G9WMk9WfkX4zmanWDI7zl6sXg4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/aod/aodclock/off/-$$Lambda$AodClockLayout$8G9WMk9WfkX4zmanWDI7zl6sXg4;-><init>(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAodDozeScreenState(I)V
    .locals 2

    .line 378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAodDozeScreenState: state is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "AodClockLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->setAodDozeScreenState(I)V

    return-void
.end method

.method public setAodSuspendState()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isFirstTimeInAod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstSuspendDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    .line 246
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mSuspendDelay:I

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mSuspendDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public showClock()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Aod"

    const-string v0, "AodClockLayout"

    const-string v1, "return because aod is already displayed"

    .line 327
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentHideTime(Z)V

    .line 331
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentDayTotalDisplayTime(Z)V

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mOnNearState:Z

    .line 333
    iput-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mFirstShowFromHide:Z

    .line 334
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->performTimeUpdate()V

    .line 335
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNotificationLayout:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateCurrentNotification()V

    return-void
.end method

.method public startShowAod()V
    .locals 4

    const-string v0, "AodClockLayout"

    const-string v1, "Aod"

    const-string v2, "startShowAod"

    .line 147
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setFirstTimeInAod(Z)V

    .line 149
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodDelayState(Z)V

    .line 150
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateAodPreventBurn()V

    .line 151
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentDayHideTime()V

    .line 152
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateCurrentDayDisplayTime()V

    .line 153
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/common/AodManager;->isCurrentNearState()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "startShowAod: return because aod is on near state"

    .line 154
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodClockAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->setAlpha(F)V

    .line 158
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->performTimeUpdate()V

    .line 159
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->mNotificationLayout:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateCurrentNotification()V

    return-void
.end method

.method public updateAodDozeStateAndStart(I)V
    .locals 2

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAodDozeStateAndStart: state is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "AodClockLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->setAodDozeScreenState(I)V

    .line 369
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->onStartDozing()V

    return-void
.end method

.method public updateNextPosition(I)V
    .locals 2

    .line 373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNextPosition: position is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "AodClockLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->updateNextPosition(I)V

    return-void
.end method
