.class public Lcom/coloros/systemui/qs/widget/ColorQSWeather;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ColorQSWeather.java"


# static fields
.field public static final COLOROS_NEW_LOCAL_CITY_INFO_URI:Ljava/lang/String; = "content://com.coloros.weather.service.provider.data/attent_city"

.field public static final COLOROS_NEW_WEATHER_INFO_URI:Ljava/lang/String; = "content://com.coloros.weather.service.provider.data/oppo_weather_info"

.field private static final METHOD_GET_LOCATION_CITY_WEATHER_INFO:Ljava/lang/String; = "getLocationSecureSettingsData"

.field private static final REQUEST_DELAY_MILLS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "ColorQSWeather"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;

.field private mNewWeatherInfoObserver:Landroid/database/ContentObserver;

.field private mRequestRunnable:Ljava/lang/Runnable;

.field private mWeatherBaseDataTask:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

.field private mWeatherCityInfoObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance p2, Lcom/coloros/systemui/qs/widget/-$$Lambda$8P7iTPnnmrU7MaTDw3eZD1Qdj28;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/widget/-$$Lambda$8P7iTPnnmrU7MaTDw3eZD1Qdj28;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mRequestRunnable:Ljava/lang/Runnable;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    invoke-static {}, Lcom/coloros/common/util/Util;->getCommonColorFont()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->isNetworkConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherBaseDataTask:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    return-object p0
.end method

.method private isNetworkConnected()Z
    .locals 3

    .line 223
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 225
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNetworkConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "ColorQSWeather"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private registerWeatherCityObserver()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/weatherservicesdk/Utils/WeatherServiceVersionUtils;->isCommonWeatherServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherCityInfoObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather$1;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherCityInfoObserver:Landroid/database/ContentObserver;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.coloros.weather.service.provider.data/attent_city"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherCityInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private registerWeatherObserver()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/weatherservicesdk/Utils/WeatherServiceVersionUtils;->isCommonWeatherServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mNewWeatherInfoObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather$2;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mNewWeatherInfoObserver:Landroid/database/ContentObserver;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.coloros.weather.service.provider.data/oppo_weather_info"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mNewWeatherInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private unregisterWeatherCityObserver()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherCityInfoObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherCityInfoObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterWeatherObserver()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mNewWeatherInfoObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mNewWeatherInfoObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    invoke-static {}, Lcom/coloros/common/util/Util;->getCommonColorFont()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->unregisterWeatherCityObserver()V

    .line 72
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->unregisterWeatherObserver()V

    .line 73
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    return-void
.end method

.method public requestNewLocalWeatherInfo()V
    .locals 5

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherBaseDataTask:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/oppo/servicesdk/WeatherRequest;

    invoke-direct {v0}, Lcom/oppo/servicesdk/WeatherRequest;-><init>()V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/servicesdk/WeatherRequest;->setRequestID(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;

    move-result-object v0

    const-string v1, "getLocationSecureSettingsData"

    .line 142
    invoke-virtual {v0, v1}, Lcom/oppo/servicesdk/WeatherRequest;->setCallMethodName(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/servicesdk/WeatherRequest;->setPackageName(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Lcom/oppo/servicesdk/WeatherRequest;->setParams(Ljava/util/ArrayList;)Lcom/oppo/servicesdk/WeatherRequest;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    const-class v2, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;

    iget-object v3, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;-><init>(Ljava/lang/Class;Landroid/content/Context;Lcom/oppo/servicesdk/WeatherRequest;Lcom/oppo/weatherservicesdk/BaseCallBack;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherBaseDataTask:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->mWeatherBaseDataTask:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    invoke-virtual {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->startServiceRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNewLocalWeatherInfo,Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "ColorQSWeather"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->requestNewLocalWeatherInfo()V

    .line 79
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->registerWeatherObserver()V

    .line 80
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->registerWeatherCityObserver()V

    :cond_0
    return-void
.end method
