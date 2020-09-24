.class Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$1;
.super Ljava/lang/Object;
.source "WeatherServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 29
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$1;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "WeatherServiceManager"

    const-string v1, "mDeathListener binderDied"

    .line 33
    invoke-static {v0, v1}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$1;->this$0:Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->access$002(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;Z)Z

    return-void
.end method
