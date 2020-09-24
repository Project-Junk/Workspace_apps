.class public Lcom/oppo/weatherservicesdk/Utils/WeatherServiceVersionUtils;
.super Ljava/lang/Object;
.source "WeatherServiceVersionUtils.java"


# static fields
.field private static final COMMON_VERSION_CODE:I = 0x9efc

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.weather.service"

.field private static final TAG:Ljava/lang/String; = "WeatherServiceVersionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeatherServiceVersionCode(Landroid/content/Context;)J
    .locals 5

    const-string v0, "WeatherServiceVersionUtils"

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "com.coloros.weather.service"

    const/4 v4, 0x0

    .line 20
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, p0

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceVersionCode"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "No WeatherService"

    .line 23
    invoke-static {v0, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v1
.end method

.method public static isCommonWeatherServiceExist(Landroid/content/Context;)Z
    .locals 4

    .line 29
    invoke-static {p0}, Lcom/oppo/weatherservicesdk/Utils/WeatherServiceVersionUtils;->getWeatherServiceVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x9efc

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
