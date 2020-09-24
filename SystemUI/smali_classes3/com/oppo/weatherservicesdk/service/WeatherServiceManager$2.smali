.class Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;
.super Ljava/lang/Object;
.source "WeatherServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;


# direct methods
.method constructor <init>(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "WeatherServiceManager"

    const-string v0, "onServiceConnected"

    .line 84
    invoke-static {p1, v0}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {p2}, Lcom/oppo/servicesdk/ICommonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/servicesdk/ICommonService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$202(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;Lcom/oppo/servicesdk/ICommonService;)Lcom/oppo/servicesdk/ICommonService;

    .line 88
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$002(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;Z)Z

    .line 89
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {p2}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$000(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {p2}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$200(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Lcom/oppo/servicesdk/ICommonService;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p2, :cond_0

    .line 91
    :try_start_1
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {p2}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$200(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Lcom/oppo/servicesdk/ICommonService;

    move-result-object p2

    invoke-interface {p2}, Lcom/oppo/servicesdk/ICommonService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {v1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$300(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p2, "onServiceConnected RemoteException"

    .line 95
    invoke-static {p1, p2}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p2, "onServiceConnected DeadObjectException"

    .line 93
    invoke-static {p1, p2}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {p2}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$100(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_2

    .line 101
    iget-object v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {v1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$100(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;

    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;->onServiceConnected()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_2
    move-exception p0

    const-string p2, " Exception "

    .line 107
    invoke-static {p1, p2, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "WeatherServiceManager"

    const-string v0, "onServiceDisconnected"

    .line 69
    invoke-static {p1, v0}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {p1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$100(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {v2}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$100(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;

    if-eqz v2, :cond_0

    .line 75
    invoke-interface {v2}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;->onServiceDisconnected()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-static {p1, v0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$002(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;Z)Z

    .line 79
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$2;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$202(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;Lcom/oppo/servicesdk/ICommonService;)Lcom/oppo/servicesdk/ICommonService;

    return-void
.end method
