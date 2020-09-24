.class public Lcom/coloros/systemui/aod/aodclock/constant/AodData;
.super Ljava/lang/Object;
.source "AodData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AodData"

.field private static sAodData:Lcom/coloros/systemui/aod/aodclock/constant/AodData;


# instance fields
.field private mAodClockAlpha:F

.field private mAodClockMode:I

.field private mAodDelayState:Z

.field private mAodEnable:I

.field private mAodEnableBattery:I

.field private mAodEnableClockOnly:I

.field private mAodEnableDateMode:I

.field private mAodEnableImmediate:I

.field private mAodEnableNotification:I

.field private mAodEnableStep:I

.field private mAodEnableTime:I

.field private mAodIsInShow:Z

.field private mAodTopRegionFive:I

.field private mAodTopRegionFour:I

.field private mAodTopRegionOne:I

.field private mAodTopRegionThree:I

.field private mAodTopRegionTwo:I

.field private mAodTopRegionZero:I

.field private mAodUpdateArea:[I

.field private mBeginHour:I

.field private mBeginMin:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDayTotalDisplayTime:J

.field private mCurrentDayTotalHideTime:J

.field private mCurrentHideTime:J

.field private mCurrentTime:J

.field private mCurvedDisplaySwitchOn:Z

.field private mDefaultAreaOrder:I

.field private mDefaultAreaOrderNum:[I

.field private mDisplayPeriodTimes:I

.field private mEndHour:I

.field private mEndMin:I

.field private mFirstTimeInAod:Z

.field private mForceDisappearCount:I

.field private mForceDisappearTime:J

.field private mHideFromReset:Z

.field private mIsMoving:Z

.field private mIsMyMmLanguage:Z

.field private mIsShowingCurvedDisplay:Z

.field private mMaxUpdateTimes:I

.field private mMinimumHideTime:I

.field private mMobileDisplayCount:I

.field private mNeedUpdateAodSetting:Z

.field private mResetUpdateTimes:I

.field private mStartShow:Z

.field private mTimeTodayCount:J

.field private mTopOffset:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mBeginHour:I

    .line 40
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mBeginMin:I

    .line 41
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mEndHour:I

    .line 42
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mEndMin:I

    const/16 v0, 0x64

    .line 43
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionZero:I

    const/16 v0, 0x168

    .line 44
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionOne:I

    const/16 v0, 0x26c

    .line 45
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionTwo:I

    const/16 v0, 0x370

    .line 46
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionThree:I

    const/16 v0, 0x474

    .line 47
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionFour:I

    const/16 v0, 0x578

    .line 48
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionFive:I

    const/16 v0, 0x3e8

    .line 49
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodClockMode:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableTime:I

    .line 51
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableImmediate:I

    .line 52
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableDateMode:I

    const/4 v1, 0x1

    .line 53
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableBattery:I

    .line 54
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableNotification:I

    .line 55
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableStep:I

    .line 56
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableClockOnly:I

    const/4 v1, 0x6

    .line 59
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mDefaultAreaOrder:I

    const v1, 0x3f333333    # 0.7f

    .line 69
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodClockAlpha:F

    .line 84
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTopOffset:I

    .line 94
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;
    .locals 1

    .line 87
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->sAodData:Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->sAodData:Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    .line 90
    :cond_0
    sget-object p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->sAodData:Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    return-object p0
.end method

.method private initAodAreaOrder(I)[I
    .locals 5

    .line 195
    new-array p0, p1, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 197
    aput v1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    array-length p1, p0

    :goto_1
    if-ge v0, p1, :cond_3

    add-int/lit8 v1, p1, -0x1

    :goto_2
    if-lez v1, :cond_2

    .line 202
    aget v2, p0, v1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    aget v3, p0, v2

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 203
    aget v3, p0, v1

    .line 204
    aget v4, p0, v2

    aput v4, p0, v1

    .line 205
    aput v3, p0, v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private initPreventBurnData()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isIsPreventedScreenBurn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateAodPreventData()V

    return-void
.end method

.method private saveCurrentDayDisplayTime()V
    .locals 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCurrentDayDisplayTime: mCurrentDayTotalDisplayTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "AodData"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "aod_prevent_burn_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    const-string p0, "aod_current_day_display_time"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveCurrentDayHideTime()V
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCurrentDayHideTime: mCurrentDayTotalHideTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalHideTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "AodData"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "aod_prevent_burn_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalHideTime:J

    const-string p0, "aod_current_day_hide_time"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateAodPreventData()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "aod_prevent_burn_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "area_order_setting"

    const/4 v2, 0x6

    .line 256
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mDefaultAreaOrder:I

    const-string v1, "minimum_hide_minute_setting"

    const/4 v2, 0x5

    .line 257
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMinimumHideTime:I

    .line 259
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isPreventedScreenBurnDevices()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const-string v2, "reset_update_times_setting"

    .line 258
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mResetUpdateTimes:I

    .line 262
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isPreventedScreenBurnDevices()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    const-string v2, "display_period_setting"

    .line 261
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mDisplayPeriodTimes:I

    .line 264
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mResetUpdateTimes:I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mDisplayPeriodTimes:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMaxUpdateTimes:I

    const v1, 0x3f333333    # 0.7f

    const-string v2, "aod_clock_alpha_setting"

    .line 265
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodClockAlpha:F

    return-void
.end method


# virtual methods
.method public getAodClockAlpha()F
    .locals 0

    .line 520
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodClockAlpha:F

    return p0
.end method

.method public getAodClockMode()I
    .locals 0

    .line 301
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodClockMode:I

    return p0
.end method

.method public getAodEnableBattery()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAodEnableClockOnly()I
    .locals 0

    .line 353
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableClockOnly:I

    return p0
.end method

.method public getAodEnableDateMode()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableDateMode:I

    return p0
.end method

.method public getAodEnableNotification()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAodEnableStep()I
    .locals 0

    .line 345
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableStep:I

    return p0
.end method

.method public getAodEnableTime()I
    .locals 0

    .line 309
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableTime:I

    return p0
.end method

.method public getAodTopRegionFive()I
    .locals 0

    .line 454
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionFive:I

    return p0
.end method

.method public getAodTopRegionFour()I
    .locals 0

    .line 450
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionFour:I

    return p0
.end method

.method public getAodTopRegionOne()I
    .locals 0

    .line 438
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionOne:I

    return p0
.end method

.method public getAodTopRegionThree()I
    .locals 0

    .line 446
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionThree:I

    return p0
.end method

.method public getAodTopRegionTwo()I
    .locals 0

    .line 442
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionTwo:I

    return p0
.end method

.method public getAodTopRegionZero()I
    .locals 0

    .line 434
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionZero:I

    return p0
.end method

.method public getAodUpdateArea()[I
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodUpdateArea:[I

    return-object p0
.end method

.method public getBeginHour()I
    .locals 0

    .line 269
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mBeginHour:I

    return p0
.end method

.method public getBeginMin()I
    .locals 0

    .line 277
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mBeginMin:I

    return p0
.end method

.method public getCurrentDayTotalDisplayTime()J
    .locals 2

    .line 599
    iget-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    return-wide v0
.end method

.method public getCurrentDayTotalHideTime()J
    .locals 2

    .line 602
    iget-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalHideTime:J

    return-wide v0
.end method

.method public getCurrentHideTime()J
    .locals 2

    .line 504
    iget-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentHideTime:J

    return-wide v0
.end method

.method public getDefaultAreaOrderNum()[I
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mDefaultAreaOrderNum:[I

    return-object p0
.end method

.method public getEndHour()I
    .locals 0

    .line 285
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mEndHour:I

    return p0
.end method

.method public getEndMin()I
    .locals 0

    .line 293
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mEndMin:I

    return p0
.end method

.method public getForceDisappearCount()I
    .locals 0

    .line 591
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearCount:I

    return p0
.end method

.method public getForceDisappearTime()J
    .locals 2

    .line 595
    iget-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearTime:J

    return-wide v0
.end method

.method public getIsMoving()Z
    .locals 0

    .line 524
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mIsMoving:Z

    return p0
.end method

.method public getMaxUpdateTimes()I
    .locals 0

    .line 474
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMaxUpdateTimes:I

    return p0
.end method

.method public getMinimumHideTime()J
    .locals 4

    .line 466
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMinimumHideTime:I

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMobileDisplayCount()I
    .locals 0

    .line 587
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMobileDisplayCount:I

    return p0
.end method

.method public getResetUpdateTimes()I
    .locals 0

    .line 470
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mResetUpdateTimes:I

    return p0
.end method

.method public initAodData()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Setting_AodSetTimeBeginHour"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mBeginHour:I

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v2, "Setting_AodSetTimeBeginMin"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mBeginMin:I

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v2, "Setting_AodSetTimeEndHour"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mEndHour:I

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v2, "Setting_AodSetTimeEndMin"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mEndMin:I

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v2, "Setting_AodEnable"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnable:I

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v2, "Setting_AodUserSetTime"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableTime:I

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v2, "Setting_AodEnableImmediate"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableImmediate:I

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v2, "Setting_AodEnableDateMode"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableDateMode:I

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "Setting_AodEnableBattery"

    invoke-static {v0, v3, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableBattery:I

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v3, "Setting_AodEnableStep"

    invoke-static {v0, v3, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableStep:I

    .line 113
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v3, "Setting_AodEnableNotification"

    invoke-static {v0, v3, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableNotification:I

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v3, "Setting_AodEnableClockOnly"

    invoke-static {v0, v3, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableClockOnly:I

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodClockMode"

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodClockMode:I

    .line 119
    iput-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mFirstTimeInAod:Z

    .line 120
    iput-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodDelayState:Z

    .line 121
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->initPreventBurnData()V

    .line 122
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->initAodRegion()V

    return-void
.end method

.method public initAodRegion()V
    .locals 9

    .line 134
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mDefaultAreaOrder:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodUpdateArea:[I

    .line 135
    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->initAodAreaOrder(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mDefaultAreaOrderNum:[I

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAodRegion: mDefaultAreaOrderNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mDefaultAreaOrderNum:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodData"

    const-string v2, "Aod"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 142
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 144
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAodRegion : screenHeight is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x924

    .line 148
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 150
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v5, v3, v4

    .line 151
    iput v5, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTopOffset:I

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLockIconHeight-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mStatusBarHeight-->"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mTopOffset-->"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTopOffset:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "ro.lcd.display.screen.underlightsensor.region"

    .line 158
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, ","

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 163
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v3, 0x64

    .line 165
    :goto_2
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTopOffset:I

    if-ge v3, v4, :cond_4

    move v3, v4

    .line 166
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContentAndPosition: mTopOffset-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTopOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   topRegion-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "persist.vendor.fingerprint.optical.iconsize"

    .line 169
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "persist.vendor.fingerprint.optical.iconlocation"

    .line 170
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    const/16 v0, 0x578

    goto :goto_3

    :cond_5
    sub-int/2addr v0, v5

    sub-int/2addr v0, v6

    add-int/lit16 v0, v0, -0x32a

    .line 177
    :goto_3
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodUpdateArea:[I

    array-length v5, v5

    sub-int/2addr v5, v6

    :goto_4
    sub-int v7, v0, v3

    .line 178
    div-int/2addr v7, v5

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAodRegion: mAodTopRegion is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " initAodRegion: mAodBottomRegion is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " average is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodUpdateArea:[I

    aput v3, v5, v4

    .line 182
    :goto_5
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodUpdateArea:[I

    array-length v5, v4

    if-ge v6, v5, :cond_7

    add-int/lit8 v5, v6, -0x1

    .line 183
    aget v5, v4, v5

    add-int/2addr v5, v7

    aput v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 185
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initAodRegion: mAodUpdateArea "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodUpdateArea:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionZero:I

    add-int/2addr v3, v7

    .line 187
    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionOne:I

    .line 188
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionOne:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionTwo:I

    .line 189
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionTwo:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionThree:I

    .line 190
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionThree:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionFour:I

    .line 191
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodTopRegionFive:I

    return-void
.end method

.method public isAodClose()Z
    .locals 0

    .line 369
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableImmediate:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAodDelayState()Z
    .locals 0

    .line 426
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodDelayState:Z

    return p0
.end method

.method public isAodEnable()Z
    .locals 1

    .line 458
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnable:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAodEnableImmediateOpen()Z
    .locals 1

    .line 365
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableImmediate:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAodEnableTimeOpen()Z
    .locals 1

    .line 361
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableTime:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAodIsInShow()Z
    .locals 0

    .line 397
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodIsInShow:Z

    return p0
.end method

.method public isCurvedDisplaySwitchOn()Z
    .locals 0

    .line 381
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurvedDisplaySwitchOn:Z

    return p0
.end method

.method public isFirstTimeInAod()Z
    .locals 0

    .line 418
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mFirstTimeInAod:Z

    return p0
.end method

.method public isHideFromReset()Z
    .locals 0

    .line 532
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mHideFromReset:Z

    return p0
.end method

.method public isMyMmLanguage()Z
    .locals 0

    .line 389
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mIsMyMmLanguage:Z

    return p0
.end method

.method public isShowingCurvedDisplay()Z
    .locals 0

    .line 373
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mIsShowingCurvedDisplay:Z

    return p0
.end method

.method public resetUploadData()V
    .locals 5

    .line 573
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aod_prevent_burn_settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 574
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMobileDisplayCount:I

    const-wide/16 v2, 0x0

    .line 575
    iput-wide v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalHideTime:J

    .line 576
    iput-wide v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    .line 577
    iput-wide v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearTime:J

    .line 578
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearCount:I

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v4, "aod_mobile_display_count"

    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 580
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v4, "aod_current_day_hide_time"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v4, "aod_current_day_display_time"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 582
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v4, "aod_force_disappear_time"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 583
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "aod_force_disappear_count"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveAodPreventData(IIIIF)V
    .locals 2

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mNeedUpdateAodSetting:Z

    .line 222
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v0, "aod_prevent_burn_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 223
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "area_order_setting"

    .line 224
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "minimum_hide_minute_setting"

    .line 225
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "reset_update_times_setting"

    .line 226
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "display_period_setting"

    .line 227
    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "aod_clock_alpha_setting"

    .line 228
    invoke-interface {p0, p1, p5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAodClockMode(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodClockMode:I

    return-void
.end method

.method public setAodDelayState(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodDelayState:Z

    return-void
.end method

.method public setAodEnable(I)V
    .locals 0

    .line 462
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnable:I

    return-void
.end method

.method public setAodEnableBattery(I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableBattery:I

    return-void
.end method

.method public setAodEnableClockOnly(I)V
    .locals 0

    .line 357
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableClockOnly:I

    return-void
.end method

.method public setAodEnableDateMode(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableDateMode:I

    return-void
.end method

.method public setAodEnableImmediate(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableImmediate:I

    return-void
.end method

.method public setAodEnableNotification(I)V
    .locals 0

    .line 341
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableNotification:I

    return-void
.end method

.method public setAodEnableStep(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableStep:I

    return-void
.end method

.method public setAodEnableTime(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodEnableTime:I

    return-void
.end method

.method public setAodIsInShow(Z)V
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mAodIsInShow:Z

    return-void
.end method

.method public setBeginHour(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mBeginHour:I

    return-void
.end method

.method public setBeginMin(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mBeginMin:I

    return-void
.end method

.method public setCurrentHideTime(J)V
    .locals 0

    .line 508
    iput-wide p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentHideTime:J

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    .line 512
    iput-wide p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentTime:J

    return-void
.end method

.method public setCurvedDisplaySwitchOn(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurvedDisplaySwitchOn:Z

    return-void
.end method

.method public setEndHour(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mEndHour:I

    return-void
.end method

.method public setEndMin(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mEndMin:I

    return-void
.end method

.method public setFirstTimeInAod(Z)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mFirstTimeInAod:Z

    return-void
.end method

.method public setHideFromReset(Z)V
    .locals 0

    .line 536
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mHideFromReset:Z

    return-void
.end method

.method public setIsMoving(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mIsMoving:Z

    return-void
.end method

.method public setMyMmLanguage(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mIsMyMmLanguage:Z

    return-void
.end method

.method public setShowingCurvedDisplay(Z)V
    .locals 0

    .line 377
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mIsShowingCurvedDisplay:Z

    return-void
.end method

.method public updateAodPreventBurn()V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mNeedUpdateAodSetting:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->initPreventBurnData()V

    .line 128
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->initAodRegion()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mNeedUpdateAodSetting:Z

    :cond_0
    return-void
.end method

.method public updateAodUploadPreventData()V
    .locals 5

    .line 561
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aod_prevent_burn_settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "aod_mobile_display_count"

    .line 562
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMobileDisplayCount:I

    const-string v2, "aod_force_disappear_count"

    .line 563
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearCount:I

    const-wide/16 v1, 0x0

    const-string v3, "aod_force_disappear_time"

    .line 564
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearTime:J

    const-string v3, "aod_current_day_display_time"

    .line 565
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAodUploadPreventData: mMobileDisplayCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMobileDisplayCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mForceDisappearCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mForceDisappearTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentDayTotalDisplayTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "AodData"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentDayDisplayTime()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "aod_prevent_burn_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aod_current_day_display_time"

    const-wide/16 v2, 0x0

    .line 251
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    return-void
.end method

.method public updateCurrentDayHideTime()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "aod_prevent_burn_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aod_current_day_hide_time"

    const-wide/16 v2, 0x0

    .line 240
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalHideTime:J

    return-void
.end method

.method public updateCurrentDayTotalDisplayTime(Z)V
    .locals 9

    .line 484
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mStartShow:Z

    const-string v1, "AodData"

    const-string v2, "Aod"

    if-ne v0, p1, :cond_0

    .line 485
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCurrentDayTotalDisplayTime: return startShow "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 488
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mStartShow:Z

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 490
    iget-wide v5, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTimeTodayCount:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    .line 491
    iput-wide v3, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTimeTodayCount:J

    :cond_1
    if-eqz p1, :cond_2

    .line 494
    iput-wide v3, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTimeTodayCount:J

    goto :goto_0

    .line 496
    :cond_2
    iget-wide v5, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    iget-wide v7, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mTimeTodayCount:J

    sub-long/2addr v3, v7

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    .line 497
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->saveCurrentDayDisplayTime()V

    .line 499
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCurrentDayTotalDisplayTime: mCurrentDayTotalDisplayTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalDisplayTime:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentHideTime(Z)V
    .locals 6

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 406
    iget-wide v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 407
    iput-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentTime:J

    :cond_0
    if-eqz p1, :cond_1

    .line 410
    iget-wide v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentHideTime:J

    iget-wide v4, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentHideTime:J

    .line 412
    :cond_1
    iput-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentTime:J

    .line 413
    iget-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalHideTime:J

    iget-wide v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentHideTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentDayTotalHideTime:J

    .line 414
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->saveCurrentDayHideTime()V

    return-void
.end method

.method public updateForceDisappearCount()V
    .locals 3

    .line 547
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearCount:I

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateForceDisappearCount: mForceDisappearCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "AodData"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "aod_prevent_burn_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearCount:I

    const-string v1, "aod_force_disappear_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateForceDisappearTime()V
    .locals 6

    .line 540
    iget-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearTime:J

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMinimumHideTime:I

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mCurrentHideTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearTime:J

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateForceDisappearTime: mForceDisappearTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "AodData"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "aod_prevent_burn_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 543
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mForceDisappearTime:J

    const-string p0, "aod_force_disappear_time"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateMobileDisplayCount()V
    .locals 3

    .line 554
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMobileDisplayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMobileDisplayCount:I

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMobileDisplayCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMobileDisplayCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "AodData"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mContext:Landroid/content/Context;

    const-string v1, "aod_prevent_burn_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->mMobileDisplayCount:I

    const-string v1, "aod_mobile_display_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
