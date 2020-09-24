.class public Lcom/oppo/weatherservicesdk/model/OppoIntradayWeatherInfo;
.super Ljava/lang/Object;
.source "OppoIntradayWeatherInfo.java"


# static fields
.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field public static final FORCAST_TIME:Ljava/lang/String; = "forcast_time"

.field public static final HOUR_EXPIRED:Ljava/lang/String; = "hour_expired"

.field public static final RAIN_PROBABILITY:Ljava/lang/String; = "rain_probability"

.field public static final TABLE_NAME:Ljava/lang/String; = "oppo_intraday_weather_info"

.field public static final TEMPERATURE:Ljava/lang/String; = "temprature"

.field public static final WEATHER_PHENOMENA:Ljava/lang/String; = "weather_phenomena"


# instance fields
.field public _id:I

.field public cityId:I

.field public forcastTime:J

.field public hourExpired:I

.field public rainProbability:Ljava/lang/String;

.field public temprature:Ljava/lang/String;

.field public weatherPhenomena:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
