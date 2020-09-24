.class public Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;
.super Ljava/lang/Object;
.source "WeatherServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;
    }
.end annotation


# static fields
.field private static final CONTEXT_IS_NULL:Ljava/lang/String; = "context is null"

.field private static final TAG:Ljava/lang/String; = "WeatherServiceManager"

.field private static final WEATHER_COMMON_SERVICE_ACTION:Ljava/lang/String; = "com.oppo.weather.external.weather_common_service"

.field private static final WEATHER_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.weather.service"

.field private static volatile sWeatherServiceManager:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private volatile mIsStartService:Z

.field private mWeatherAppConnection:Landroid/content/ServiceConnection;

.field private mWeatherService:Lcom/oppo/servicesdk/ICommonService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherService:Lcom/oppo/servicesdk/ICommonService;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mCallbacks:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$1;

    invoke-direct {v0, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$1;-><init>(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)V

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 66
    new-instance v0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;

    invoke-direct {v0, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;-><init>(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)V

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherAppConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Lcom/oppo/servicesdk/ICommonService;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherService:Lcom/oppo/servicesdk/ICommonService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;Lcom/oppo/servicesdk/ICommonService;)Lcom/oppo/servicesdk/ICommonService;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherService:Lcom/oppo/servicesdk/ICommonService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;
    .locals 2

    .line 49
    sget-object v0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->sWeatherServiceManager:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->sWeatherServiceManager:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-direct {v1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;-><init>()V

    sput-object v1, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->sWeatherServiceManager:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->sWeatherServiceManager:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    return-object v0
.end method


# virtual methods
.method public bindUpdateService(Landroid/content/Context;)V
    .locals 3

    const-string v0, "WeatherServiceManager"

    .line 114
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindUpdateService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-boolean v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    if-nez v1, :cond_1

    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.weather.external.weather_common_service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.coloros.weather.service"

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherAppConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    const-string p0, "context is null"

    .line 121
    invoke-static {v0, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, " Exception "

    .line 125
    invoke-static {v0, p1, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getWeatherService()Lcom/oppo/servicesdk/ICommonService;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherService:Lcom/oppo/servicesdk/ICommonService;

    return-object p0
.end method

.method public isStartService()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    return p0
.end method

.method public registerCallback(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;)V
    .locals 2

    const-string v0, "WeatherServiceManager"

    if-eqz p1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherService:Lcom/oppo/servicesdk/ICommonService;

    if-eqz p0, :cond_0

    .line 162
    invoke-interface {p1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;->onServiceConnected()V

    const-string p0, "onServiceConnected"

    .line 163
    invoke-static {v0, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "onServiceDisconnected"

    .line 165
    invoke-static {v0, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;->onServiceDisconnected()V

    goto :goto_0

    :cond_1
    const-string p0, "registerCallback error as callback == null,check your methods if need"

    .line 170
    invoke-static {v0, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unBindUpdateService(Landroid/content/Context;)V
    .locals 4

    const-string v0, "WeatherServiceManager"

    .line 139
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindUpdateService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-boolean v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherService:Lcom/oppo/servicesdk/ICommonService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherService:Lcom/oppo/servicesdk/ICommonService;

    invoke-interface {v1}, Lcom/oppo/servicesdk/ICommonService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 148
    :cond_1
    iput-boolean v2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mIsStartService:Z

    :cond_2
    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mWeatherService:Lcom/oppo/servicesdk/ICommonService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, " Exception "

    .line 152
    invoke-static {v0, p1, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unregisterCallback(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
