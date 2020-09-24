.class public Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;
.super Ljava/lang/Object;
.source "AttendWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AttendWeatherInfo"


# instance fields
.field private mAQI:Ljava/lang/String;

.field private mAQILevel:Ljava/lang/String;

.field private mCityId:J

.field private mCityName:Ljava/lang/String;

.field private mCurrentTemp:Ljava/lang/String;

.field private mCurrentWeatherId:I

.field private mCurrentWeatherName:Ljava/lang/String;

.field private mDayTemp:I

.field private mDayWeather:Ljava/lang/String;

.field private mIsLocationCity:Z

.field private mIsTempShowAsCelsius:Z

.field private mNightTemp:I

.field private mPM25:Ljava/lang/String;

.field private mSunRiseMills:J

.field private mSunSetMills:J

.field private mTimeZone:F

.field private mWarnLevel:I

.field private mWarnTitle:Ljava/lang/String;

.field private mWeatherId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo$1;

    invoke-direct {v0}, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo$1;-><init>()V

    sput-object v0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAQI()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQI:Ljava/lang/String;

    return-object p0
.end method

.method public getAQILevel()Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQILevel:Ljava/lang/String;

    return-object p0
.end method

.method public getCityId()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityId:J

    return-wide v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityName:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentTemp()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentTemp:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentWeatherId()I
    .locals 0

    .line 202
    iget p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherId:I

    return p0
.end method

.method public getCurrentWeatherName()Ljava/lang/String;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherName:Ljava/lang/String;

    return-object p0
.end method

.method public getDayTemp()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayTemp:I

    return p0
.end method

.method public getDayWeather()Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayWeather:Ljava/lang/String;

    return-object p0
.end method

.method public getNightTemp()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mNightTemp:I

    return p0
.end method

.method public getPM25()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mPM25:Ljava/lang/String;

    return-object p0
.end method

.method public getSunRiseMills()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunRiseMills:J

    return-wide v0
.end method

.method public getSunSetMills()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunSetMills:J

    return-wide v0
.end method

.method public getTimeZone()F
    .locals 0

    .line 226
    iget p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mTimeZone:F

    return p0
.end method

.method public getWarnLevel()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnLevel:I

    return p0
.end method

.method public getWarnTitle()Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherId()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWeatherId:I

    return p0
.end method

.method public isLocationCity()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsLocationCity:Z

    return p0
.end method

.method public isTempShowAsCelsius()Z
    .locals 0

    .line 242
    iget-boolean p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsTempShowAsCelsius:Z

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWeatherId:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mNightTemp:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayTemp:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentTemp:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayWeather:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQILevel:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQI:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mPM25:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnTitle:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnLevel:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunRiseMills:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunSetMills:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherId:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityId:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mTimeZone:F

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsTempShowAsCelsius:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsLocationCity:Z

    return-void
.end method

.method public setAQI(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQI:Ljava/lang/String;

    return-void
.end method

.method public setAQILevel(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQILevel:Ljava/lang/String;

    return-void
.end method

.method public setCityId(J)V
    .locals 0

    .line 222
    iput-wide p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityId:J

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTemp(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentTemp:Ljava/lang/String;

    return-void
.end method

.method public setCurrentWeatherId(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherId:I

    return-void
.end method

.method public setCurrentWeatherName(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherName:Ljava/lang/String;

    return-void
.end method

.method public setDayTemp(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayTemp:I

    return-void
.end method

.method public setDayWeather(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayWeather:Ljava/lang/String;

    return-void
.end method

.method public setLocationCity(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsLocationCity:Z

    return-void
.end method

.method public setNightTemp(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mNightTemp:I

    return-void
.end method

.method public setPM25(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mPM25:Ljava/lang/String;

    return-void
.end method

.method public setSunRiseMills(J)V
    .locals 0

    .line 190
    iput-wide p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunRiseMills:J

    return-void
.end method

.method public setSunSetMills(J)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunSetMills:J

    return-void
.end method

.method public setTempShowAsCelsius(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsTempShowAsCelsius:Z

    return-void
.end method

.method public setTimeZone(F)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mTimeZone:F

    return-void
.end method

.method public setWarnLevel(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnLevel:I

    return-void
.end method

.method public setWarnTitle(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnTitle:Ljava/lang/String;

    return-void
.end method

.method public setWeatherId(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWeatherId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttendWeatherInfo{mWeatherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWeatherId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNightTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mNightTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDayTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentTemp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDayWeather=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayWeather:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAQILevel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQILevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAQI=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPM25=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mPM25:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mWarnTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mWarnLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSunRiseMills="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunRiseMills:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mSunSetMills="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunSetMills:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentWeatherId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentWeatherName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mTimeZone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mTimeZone:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mIsTempShowAsCelsius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsTempShowAsCelsius:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLocationCity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsLocationCity:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 62
    iget p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWeatherId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mNightTemp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayTemp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mDayWeather:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQILevel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mAQI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mPM25:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mWarnLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunRiseMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mSunSetMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCurrentWeatherName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-wide v0, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mTimeZone:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 78
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-boolean p2, p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->mIsTempShowAsCelsius:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;->isLocationCity()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
