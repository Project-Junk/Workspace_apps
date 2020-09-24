.class Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask$1;
.super Ljava/lang/Object;
.source "WeatherBaseDataTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->executeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;


# direct methods
.method constructor <init>(Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask$1;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "executeRequest RemoteException "

    const-string v1, "WeatherBaseDataTask"

    .line 92
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask$1;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    invoke-static {v3}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->access$000(Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask$1;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    invoke-virtual {v2}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->doRequestFromWeatherService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    .line 98
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask$1;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->access$100(Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;Ljava/lang/String;)V

    goto :goto_2

    .line 95
    :goto_1
    invoke-static {v1, v0, v2}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask$1;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->access$100(Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
