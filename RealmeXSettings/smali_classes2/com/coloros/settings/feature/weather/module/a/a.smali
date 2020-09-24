.class public final Lcom/coloros/settings/feature/weather/module/a/a;
.super Ljava/lang/Object;
.source "WeatherServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/weather/module/a/a$b;,
        Lcom/coloros/settings/feature/weather/module/a/a$a;
    }
.end annotation


# static fields
.field private static k:Lcom/coloros/settings/feature/weather/module/a/a;


# instance fields
.field public a:Lcom/coloros/d/a/a/a;

.field public b:Lcom/coloros/d/a/a/b;

.field public volatile c:Z

.field d:Lcom/coloros/settings/feature/weather/module/a/a$b;

.field public e:Landroid/content/Context;

.field f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/weather/module/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Landroid/os/IBinder$DeathRecipient;

.field public j:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/coloros/settings/feature/weather/module/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/weather/module/a/a$b;-><init>(B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->d:Lcom/coloros/settings/feature/weather/module/a/a$b;

    .line 58
    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/module/a/a;->f:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/coloros/settings/feature/weather/module/a/a$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/module/a/a$1;-><init>(Lcom/coloros/settings/feature/weather/module/a/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->i:Landroid/os/IBinder$DeathRecipient;

    .line 80
    new-instance v0, Lcom/coloros/settings/feature/weather/module/a/a$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/module/a/a$2;-><init>(Lcom/coloros/settings/feature/weather/module/a/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->j:Landroid/content/ServiceConnection;

    .line 77
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->e:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/coloros/settings/feature/weather/module/a/a;
    .locals 2

    const-class v0, Lcom/coloros/settings/feature/weather/module/a/a;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/coloros/settings/feature/weather/module/a/a;->k:Lcom/coloros/settings/feature/weather/module/a/a;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/coloros/settings/feature/weather/module/a/a;

    invoke-direct {v1}, Lcom/coloros/settings/feature/weather/module/a/a;-><init>()V

    sput-object v1, Lcom/coloros/settings/feature/weather/module/a/a;->k:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 73
    :cond_0
    sget-object v1, Lcom/coloros/settings/feature/weather/module/a/a;->k:Lcom/coloros/settings/feature/weather/module/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(JZZ)V
    .locals 5

    .line 196
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    if-eqz v0, :cond_1

    const-string v2, "Error occur, e = "

    const-string v3, "WeatherServiceBridge"

    if-eqz p3, :cond_0

    .line 199
    :try_start_0
    invoke-interface {v0, p4}, Lcom/coloros/d/a/a/b;->a(Z)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {v0, p1, p2, p4}, Lcom/coloros/d/a/a/b;->a(JZ)V

    const-string v0, "updateCityWeatherById"

    .line 202
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->d:Lcom/coloros/settings/feature/weather/module/a/a$b;

    iput-boolean v1, v0, Lcom/coloros/settings/feature/weather/module/a/a$b;->b:Z

    .line 216
    iput-boolean p3, v0, Lcom/coloros/settings/feature/weather/module/a/a$b;->c:Z

    .line 217
    iput-boolean p4, v0, Lcom/coloros/settings/feature/weather/module/a/a$b;->d:Z

    .line 218
    iput-wide p1, v0, Lcom/coloros/settings/feature/weather/module/a/a$b;->a:J

    .line 219
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/module/a/a;->b()V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/a/b;)V
    .locals 3

    const-string v0, "Error occur, e = "

    const-string v1, "WeatherServiceBridge"

    .line 181
    iget-boolean v2, p0, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    if-eqz v2, :cond_0

    .line 183
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lcom/coloros/d/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/a/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindUpdateService mIsStartWeatherService = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherServiceBridge"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/module/a/b;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/weather/module/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a;->a:Lcom/coloros/d/a/a/a;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.weather.action.update_weather"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.weather.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/a/a;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/a/a;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method
