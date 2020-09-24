.class public Lcom/oppo/weatherservicesdk/model/WeatherInfoDesc;
.super Ljava/lang/Object;
.source "WeatherInfoDesc.java"


# instance fields
.field public cityCurrentTime:J

.field public cityTimeZone:F

.field public intradayWeatherInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/weatherservicesdk/model/OppoIntradayWeatherInfo;",
            ">;"
        }
    .end annotation
.end field

.field public weatherInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/weatherservicesdk/model/OppoWeatherInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
