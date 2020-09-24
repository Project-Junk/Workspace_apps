.class public Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;
.super Ljava/lang/Object;
.source "BatteryLevelToDecimalHelperRealme.java"


# static fields
.field private static final BATTERY_CHANGE_THRESHOLD:F = 0.002f

.field private static final BATTERY_RATE_CURRENT:[[F

.field private static final BATT_FCC:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_fcc"

.field private static final BATT_RM:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_rm"

.field private static final CURRENT_NOW:Ljava/lang/String; = "/sys/class/power_supply/battery/current_now"

.field private static final DUAL_BATTERY_CELLS:I = 0x2

.field private static final DUAL_ESTIMATE_DURATION:I = 0x2ee0

.field private static final EQUAL_THRESHOLD:F = 1.0E-6f

.field private static final ESTIMATE_DURATION:I = 0x1770

.field private static final FULL_BATTERY_RATE:F = 1.00006f

.field private static final HALF_ADJUST:F = 0.5f

.field private static final HUNDRED:I = 0x64

.field private static final MAH:I = 0x36ee80

.field private static final MAX_ADJUST_INCREMENT:F = 0.0095f

.field private static final MIN_ADJUST_DURATION:F = 0.00499999f

.field private static final MIN_INCREMENT:F = 0.001f

.field private static final PLUG_TIME_OFFSET:I = 0x2bf20

.field private static final RANDOM_START:I = 0x28

.field private static final RANDOM_STEUP:I = 0x14

.field private static final STATE_START:I = 0x1

.field private static final STATE_STOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BatteryLevelToDecimalUtilRealme"

.field private static final TEN_THOUSAND:I = 0x2710

.field private static sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;


# instance fields
.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mCalculateBatteryRateRunnable:Ljava/lang/Runnable;

.field private mCalculatedBatteryRate:F

.field private mContext:Landroid/content/Context;

.field private mEstimateDuration:I

.field private mEstimatedBatteryRate:F

.field private mFccBattery:F

.field private mHanlder:Landroid/os/Handler;

.field private mLastCalculatedBatteryRate:F

.field private mLastDecimalPart:I

.field private mLastIntegerPart:I

.field private mLastUnPluggedTime:J

.field private mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

.field private mLevelFromBroadcast:I

.field private mMethodSetBatteryLevel:Ljava/lang/reflect/Method;

.field private mNowCurrent:F

.field private mRemainBattery:F

.field private mSixMsIncrementBatteryRate:F

.field private mSmoothedBatteryRate:F

.field private mSmoothedBatteryRateAnimator:Landroid/animation/ValueAnimator;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 53
    new-array v0, v0, [[F

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->BATTERY_RATE_CURRENT:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x457a0000    # 4000.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f4ccccd    # 0.8f
        0x453b8000    # 3000.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x44fa0000    # 2000.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastIntegerPart:I

    .line 70
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastDecimalPart:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mState:I

    .line 103
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mHanlder:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculateBatteryRateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->calculateBatteryRate()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->shouldAbortCalculate()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimateDuration:I

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mHanlder:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSmoothedBatteryRate:F

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSmoothedBatteryRate:F

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    return p0
.end method

.method static synthetic access$502(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->splitBatteryRate(F)V

    return-void
.end method

.method private adjustSixMsIncrementBatteryRate()V
    .locals 8

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustSixMsIncrementBatteryRate start, mEstimatedBatteryRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCalculatedBatteryRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", estimateOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSixMsIncrementBatteryRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryLevelToDecimalUtilRealme"

    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v0, :cond_3

    .line 261
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    sget-object v5, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->BATTERY_RATE_CURRENT:[[F

    aget-object v6, v5, v4

    aget v6, v6, v4

    cmpl-float v6, v0, v6

    const/4 v7, 0x2

    if-ltz v6, :cond_0

    aget-object v6, v5, v4

    aget v6, v6, v3

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    .line 263
    aget-object v0, v5, v4

    aget v0, v0, v7

    goto :goto_0

    .line 264
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    sget-object v5, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->BATTERY_RATE_CURRENT:[[F

    aget-object v6, v5, v3

    aget v6, v6, v4

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_1

    aget-object v6, v5, v3

    aget v6, v6, v3

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    .line 266
    aget-object v0, v5, v3

    aget v0, v0, v7

    goto :goto_0

    .line 267
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    sget-object v5, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->BATTERY_RATE_CURRENT:[[F

    aget-object v6, v5, v7

    aget v4, v6, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_2

    aget-object v4, v5, v7

    aget v4, v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 269
    aget-object v0, v5, v7

    aget v0, v0, v7

    goto :goto_0

    .line 271
    :cond_2
    sget-object v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->BATTERY_RATE_CURRENT:[[F

    const/4 v4, 0x3

    aget-object v0, v0, v4

    aget v0, v0, v7

    .line 273
    :goto_0
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->getAdjustIncrementBatteryRateNorm(F)F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustSixMsIncrementBatteryRate, mSixMsIncrementBatteryRate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 276
    :goto_1
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    iget v4, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    sub-float/2addr v0, v4

    const v4, 0x3ba3d6f5    # 0.00499999f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4

    if-eqz v3, :cond_4

    const/16 v3, 0x2ee0

    .line 278
    iput v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimateDuration:I

    goto :goto_2

    :cond_4
    const/16 v3, 0x1770

    .line 280
    iput v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimateDuration:I

    :goto_2
    const v3, 0x3c1ba5e3    # 0.0095f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 283
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    .line 285
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSixMsIncrementBatteryRate end, mEstimateDuration="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimateDuration:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private afterCalculateBatteryRate(Z)V
    .locals 4

    .line 212
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastIntegerPart:I

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastDecimalPart:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->notifyBatteryLevelChange(IIZZ)V

    .line 213
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->readBatteryInfo()V

    .line 214
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastCalculatedBatteryRate:F

    .line 215
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastIntegerPart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastDecimalPart:I

    if-ltz v1, :cond_0

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 216
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    :cond_0
    if-eqz p1, :cond_1

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastUnPluggedTime:J

    .line 221
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "afterCalculateBatteryRate, mLastCalculatedBatteryRate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastCalculatedBatteryRate:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mEstimatedBatteryRate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryLevelToDecimalUtilRealme"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calculateBatteryRate()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSmoothedBatteryRateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSmoothedBatteryRateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->readBatteryInfo()V

    .line 160
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->adjustSixMsIncrementBatteryRate()V

    const/4 v0, 0x2

    .line 162
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 163
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimateDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 165
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 166
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$3;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$4;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSmoothedBatteryRateAnimator:Landroid/animation/ValueAnimator;

    .line 195
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getAdjustIncrementBatteryRateNorm(F)F
    .locals 2

    .line 290
    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mFccBattery:F

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const v0, 0x45bb8000    # 6000.0f

    mul-float/2addr p1, v0

    const v0, 0x4a5bba00    # 3600000.0f

    mul-float/2addr p0, v0

    div-float/2addr p1, p0

    return p1

    :cond_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;
    .locals 5

    .line 85
    sget-object v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;-><init>()V

    sput-object v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    .line 87
    sget-object v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    iput-object p0, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mContext:Landroid/content/Context;

    .line 89
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    iget-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    const-string v1, "batterymanager"

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    iput-object p0, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mBatteryManager:Landroid/os/BatteryManager;

    .line 93
    :cond_1
    :try_start_0
    sget-object p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mBatteryManager:Landroid/os/BatteryManager;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mMethodSetBatteryLevel:Ljava/lang/reflect/Method;

    if-nez p0, :cond_2

    .line 94
    sget-object p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    sget-object v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setBatteryLevel_for_charging"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mMethodSetBatteryLevel:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BatteryLevelToDecimalUtilRealme"

    const-string v1, "Get method of setBatteryLevel failed"

    .line 98
    invoke-static {v0, v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :cond_2
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->sInstance:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    return-object p0
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 319
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyBatteryLevelChange(IIZZ)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_1

    .line 338
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->setBatteryLevel(IZ)Z

    :cond_1
    return-void
.end method

.method private preCalculateBatteryRate()V
    .locals 7

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preCalculateBatteryRate start, mLevelFromBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLevelFromBroadcast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastIntegerPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastIntegerPart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastCalculatedBatteryRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastCalculatedBatteryRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mEstimatedBatteryRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryLevelToDecimalUtilRealme"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->readBatteryInfo()V

    .line 135
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->isFloatEqual(FF)Z

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLevelFromBroadcast:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    goto/16 :goto_1

    .line 138
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastUnPluggedTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x2bf20

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    iget v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastCalculatedBatteryRate:F

    sub-float/2addr v0, v3

    .line 139
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3b03126f    # 0.002f

    cmpg-float v0, v0, v3

    if-lez v0, :cond_1

    .line 140
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    iget v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastCalculatedBatteryRate:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preCalculateBatteryRate, current plug from last unplug time less 3 minutes and real battery rate offset exceeds 0.2% and adjust mEstimatedBatteryRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x64

    iget v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLevelFromBroadcast:I

    if-eq v0, v3, :cond_2

    int-to-float v0, v3

    div-float/2addr v0, v2

    .line 144
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    add-double/2addr v2, v4

    const-wide v4, 0x40c3880000000000L    # 10000.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preCalculateBatteryRate, estimate value not equal to broadcast value, and adjust mEstimatedBatteryRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastIntegerPart:I

    .line 149
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastDecimalPart:I

    .line 151
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preCalculateBatteryRate end, mEstimatedBatteryRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mEstimatedBatteryRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readBatteryInfo()V
    .locals 5

    const-string v0, "BatteryLevelToDecimalUtilRealme"

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v1

    const-string v2, "/sys/class/power_supply/battery/batt_fcc"

    .line 228
    invoke-virtual {v1, v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->readDriverNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sys/class/power_supply/battery/batt_rm"

    .line 229
    invoke-virtual {v1, v3}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->readDriverNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sys/class/power_supply/battery/current_now"

    .line 230
    invoke-virtual {v1, v4}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->readDriverNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mFccBattery:F

    .line 235
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mRemainBattery:F

    .line 236
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mNowCurrent:F

    .line 237
    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mNowCurrent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mNowCurrent:F

    .line 238
    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mFccBattery:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 239
    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mRemainBattery:F

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mFccBattery:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    .line 240
    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mNowCurrent:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const v2, 0x45bb8000    # 6000.0f

    mul-float/2addr v1, v2

    const v2, 0x4a5bba00    # 3600000.0f

    iget v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mFccBattery:F

    mul-float/2addr v3, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readBatteryInfo, mFccBattery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mFccBattery:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mNowCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mNowCurrent:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mRemainBattery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mRemainBattery:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mCalculatedBatteryRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculatedBatteryRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mSixMsIncrementBatteryRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSixMsIncrementBatteryRate:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string v1, "number format exception"

    .line 248
    invoke-static {v0, v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private setBatteryLevel(IZ)Z
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mMethodSetBatteryLevel:Ljava/lang/reflect/Method;

    const-string v1, "BatteryLevelToDecimalUtilRealme"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 346
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setBatteryLevel"

    .line 348
    invoke-static {v1, p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "Can not get method setBatteryLevel"

    .line 351
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method private shouldAbortCalculate()Z
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isCharging()Z

    move-result v0

    const-string v1, "BatteryLevelToDecimalUtilRealme"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string p0, "shouldAbortCalculate is not charging"

    .line 358
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 361
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mState:I

    if-eq v0, v2, :cond_1

    const-string p0, "shouldAbortCalculate is not start"

    .line 362
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 365
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const-string p0, "shouldAbortCalculate level view is not attached"

    .line 366
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private showBatteryRate(II)V
    .locals 1

    .line 328
    div-int/lit8 v0, p2, 0xa

    .line 329
    rem-int/lit8 p2, p2, 0xa

    .line 330
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    if-eqz p0, :cond_0

    .line 331
    invoke-virtual {p0, p1, v0, p2}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->updateBatteryLevelView(III)V

    :cond_0
    return-void
.end method

.method private declared-synchronized splitBatteryRate(F)V
    .locals 5

    monitor-enter p0

    const v0, 0x3f8001f7    # 1.00006f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 299
    :try_start_0
    div-int/lit8 v1, v0, 0x64

    .line 300
    rem-int/lit8 v0, v0, 0x64

    .line 302
    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastIntegerPart:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastDecimalPart:I

    if-eq v0, v2, :cond_2

    :cond_0
    const-string v2, "BatteryLevelToDecimalUtilRealme"

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splitBatteryRate, batteryRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", integerPart="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", decimalPart="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->showBatteryRate(II)V

    .line 307
    iget p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastIntegerPart:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastDecimalPart:I

    if-ne p1, v2, :cond_1

    .line 308
    invoke-direct {p0, v1, v0, v3, v3}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->notifyBatteryLevelChange(IIZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 310
    invoke-direct {p0, v1, v0, v3, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->notifyBatteryLevelChange(IIZZ)V

    .line 312
    :goto_0
    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastIntegerPart:I

    .line 313
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLastDecimalPart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 316
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public setLevelAndLogoView(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLevelAndLogoView:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    return-void
.end method

.method public setLevelFromBroadcast(I)V
    .locals 1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 324
    invoke-virtual {p1, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mLevelFromBroadcast:I

    return-void
.end method

.method public startCalculateBatteryRate()V
    .locals 2

    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mState:I

    .line 123
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->preCalculateBatteryRate()V

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculateBatteryRateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mHanlder:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculateBatteryRateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopCalculateBatteryRate(Z)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopCalculateBatteryRate unPlugged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryLevelToDecimalUtilRealme"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mState:I

    .line 201
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculateBatteryRateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mCalculateBatteryRateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSmoothedBatteryRateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->mSmoothedBatteryRateAnimator:Landroid/animation/ValueAnimator;

    .line 208
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->afterCalculateBatteryRate(Z)V

    return-void
.end method
