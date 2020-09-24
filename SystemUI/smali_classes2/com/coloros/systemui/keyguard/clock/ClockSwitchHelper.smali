.class public Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;
.super Ljava/lang/Object;
.source "ClockSwitchHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockSwitchHelper"

.field private static sClockSwitchHelper:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualClockMainSwitchObserver:Landroid/database/ContentObserver;

.field private mDualClockMainSwitchOn:Z

.field private mDualClockOnScreenLock:Z

.field private mDualClockOnScreenLockObserver:Landroid/database/ContentObserver;

.field private mLocatedCityChangeObserver:Landroid/database/ContentObserver;

.field private mResidentCityChangeObserver:Landroid/database/ContentObserver;

.field private mTimeZoneSame:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$1;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockOnScreenLockObserver:Landroid/database/ContentObserver;

    .line 99
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$2;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockMainSwitchObserver:Landroid/database/ContentObserver;

    .line 110
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$3;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mResidentCityChangeObserver:Landroid/database/ContentObserver;

    .line 120
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$4;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mLocatedCityChangeObserver:Landroid/database/ContentObserver;

    .line 48
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getDualClockEnable(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockMainSwitchOn:Z

    .line 50
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getDualClockOnScreenLock(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockOnScreenLock:Z

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->isTimeZoneSame()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mTimeZoneSame:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockOnScreenLock:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockOnScreenLock:Z

    return p1
.end method

.method static synthetic access$102(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mTimeZoneSame:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->isTimeZoneSame()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockMainSwitchOn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockMainSwitchOn:Z

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;
    .locals 2

    const-class v0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->sClockSwitchHelper:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->sClockSwitchHelper:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    .line 44
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->sClockSwitchHelper:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isTimeZoneSame()Z
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getResidentWeatherInfo()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getLocatedWeatherInfo()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resident = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nlocated = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ClockSwitchHelper"

    .line 77
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getLocatedWeatherInfo()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;
    .locals 4

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getLocatedWeatherInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ClockSwitchHelper"

    if-nez p0, :cond_0

    const-string p0, "getLocatedWeatherInfo  query  result = null"

    .line 199
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->parseWeatherInfo(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    move-result-object v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocatedWeatherInfo  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getResidentWeatherInfo()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;
    .locals 4

    .line 186
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getResidentWeatherInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ClockSwitchHelper"

    if-nez p0, :cond_0

    const-string p0, "getResidentWeatherInfo  query  result = null"

    .line 188
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->parseWeatherInfo(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    move-result-object v1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResidentWeatherInfo  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isDualClockMainSwitchOn()Z
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getDualClockEnable(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDualClockOnScreenLockSwitchOn()Z
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getDualClockOnScreenLock(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshClockType(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getDualClockEnable(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockMainSwitchOn:Z

    .line 134
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getDualClockOnScreenLock(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockOnScreenLock:Z

    .line 135
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->isTimeZoneSame()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mTimeZoneSame:Z

    .line 138
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->shouldShowDualClock()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    const-class p1, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->setCustomClockFace(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    const-class p1, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->setCustomClockFace(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->shouldShowDualClock()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    const-class p1, Lcom/coloros/systemui/keyguard/clock/DualClockController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->setCustomClockFace(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    const-class p1, Lcom/coloros/systemui/keyguard/clock/SingleClockController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->setCustomClockFace(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public shouldCheckDualClock()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockMainSwitchOn:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockOnScreenLock:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldShowDualClock()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->shouldCheckDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mTimeZoneSame:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startObserver()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "enable_dual_clock_switch"

    .line 156
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockMainSwitchObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 155
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 159
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    const-string v1, "enable_dual_clock_screen_clock_switch"

    .line 160
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockOnScreenLockObserver:Landroid/database/ContentObserver;

    .line 159
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    const-string v1, "oppo_weather_info"

    .line 164
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mLocatedCityChangeObserver:Landroid/database/ContentObserver;

    .line 163
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    const-string v1, "oppo_weather_info_resident"

    .line 168
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mResidentCityChangeObserver:Landroid/database/ContentObserver;

    .line 167
    invoke-static {v0, v1, v4, p0, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "ClockSwitchHelper"

    const-string v0, "startObserver success"

    .line 171
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopObserver()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockMainSwitchObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mDualClockOnScreenLockObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mLocatedCityChangeObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->mResidentCityChangeObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    const-string p0, "ClockSwitchHelper"

    const-string v0, "stopObserver success"

    .line 181
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
