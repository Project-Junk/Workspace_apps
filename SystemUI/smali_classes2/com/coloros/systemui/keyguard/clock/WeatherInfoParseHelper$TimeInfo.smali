.class public Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;
.super Ljava/lang/Object;
.source "WeatherInfoParseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeInfo"
.end annotation


# instance fields
.field private mAmpm:Ljava/lang/String;

.field private mDateInfo:Ljava/lang/String;

.field private mHour:Ljava/lang/String;

.field private mMinute:Ljava/lang/String;

.field private mShortTime:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmpm()Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mAmpm:Ljava/lang/String;

    return-object p0
.end method

.method public getDate()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mDateInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getDateInfo()Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mDateInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getHour()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mHour:Ljava/lang/String;

    return-object p0
.end method

.method public getMinute()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mMinute:Ljava/lang/String;

    return-object p0
.end method

.method public getShortTime()Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mShortTime:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method public setAmpm(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mAmpm:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mDateInfo:Ljava/lang/String;

    return-void
.end method

.method public setDateInfo(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mDateInfo:Ljava/lang/String;

    return-void
.end method

.method public setHour(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mHour:Ljava/lang/String;

    return-void
.end method

.method public setMinute(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mMinute:Ljava/lang/String;

    return-void
.end method

.method public setShortTime(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mShortTime:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeInfo{mHour=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mHour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMinutes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mMinute:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAmpm=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mAmpm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDateInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mDateInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mShortTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mShortTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
