.class public Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfoParseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherInfo"
.end annotation


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mDegree:Ljava/lang/String;

.field private mEnglishCityName:Ljava/lang/String;

.field private mLocalCityName:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;

.field private mUnit:Ljava/lang/String;

.field private mWeather:Ljava/lang/String;

.field private mWeatherType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mDegree:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mWeatherType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mWeather:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mUnit:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mCityCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mLocalCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mEnglishCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public getCityCode()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mCityCode:Ljava/lang/String;

    return-object p0
.end method

.method public getDegree()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mDegree:Ljava/lang/String;

    return-object p0
.end method

.method public getEnglishCityName()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mEnglishCityName:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalCityName()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mLocalCityName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mUnit:Ljava/lang/String;

    return-object p0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mWeather:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherType()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mWeatherType:Ljava/lang/String;

    return-object p0
.end method

.method public isWeatherInfoValid()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->isValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mLocalCityName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mEnglishCityName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mEnglishCityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mLocalCityName:Ljava/lang/String;

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherInfo{ mDegree= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mDegree:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWeatherType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mWeatherType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWeather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mWeather:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCityCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mCityCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalCityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mLocalCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mEnglishCityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mEnglishCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
