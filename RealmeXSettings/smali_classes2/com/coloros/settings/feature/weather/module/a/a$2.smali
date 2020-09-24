.class final Lcom/coloros/settings/feature/weather/module/a/a$2;
.super Ljava/lang/Object;
.source "WeatherServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/module/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/module/a/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/module/a/a;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "Error occur, e = "

    const-string v0, "WeatherServiceBridge"

    .line 100
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    invoke-static {p2}, Lcom/coloros/d/a/a/b$a;->a(Landroid/os/IBinder;)Lcom/coloros/d/a/a/b;

    move-result-object p2

    .line 9037
    iput-object p2, v1, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    .line 101
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    const/4 v1, 0x1

    .line 10037
    iput-boolean v1, p2, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    .line 11037
    iget-boolean p2, p2, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 12037
    iget-object p2, p2, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    if-eqz p2, :cond_0

    .line 104
    :try_start_0
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 13037
    iget-object p2, p2, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    .line 104
    iget-object v3, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 14037
    iget-object v3, v3, Lcom/coloros/settings/feature/weather/module/a/a;->a:Lcom/coloros/d/a/a/a;

    .line 104
    invoke-interface {p2, v3}, Lcom/coloros/d/a/a/b;->a(Lcom/coloros/d/a/a/a;)V

    .line 105
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 15037
    iget-object p2, p2, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    .line 105
    invoke-interface {p2}, Lcom/coloros/d/a/a/b;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v3, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 16037
    iget-object v3, v3, Lcom/coloros/settings/feature/weather/module/a/a;->i:Landroid/os/IBinder$DeathRecipient;

    .line 105
    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p2

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/DeadObjectException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 17037
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/a/a;->d:Lcom/coloros/settings/feature/weather/module/a/a$b;

    .line 113
    iget-boolean p1, p1, Lcom/coloros/settings/feature/weather/module/a/a$b;->b:Z

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 18037
    iget-object p2, p1, Lcom/coloros/settings/feature/weather/module/a/a;->d:Lcom/coloros/settings/feature/weather/module/a/a$b;

    .line 114
    iget-wide v0, p2, Lcom/coloros/settings/feature/weather/module/a/a$b;->a:J

    iget-object p2, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 19037
    iget-object p2, p2, Lcom/coloros/settings/feature/weather/module/a/a;->d:Lcom/coloros/settings/feature/weather/module/a/a$b;

    .line 114
    iget-boolean p2, p2, Lcom/coloros/settings/feature/weather/module/a/a$b;->c:Z

    iget-object v3, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 20037
    iget-object v3, v3, Lcom/coloros/settings/feature/weather/module/a/a;->d:Lcom/coloros/settings/feature/weather/module/a/a$b;

    .line 115
    iget-boolean v3, v3, Lcom/coloros/settings/feature/weather/module/a/a$b;->d:Z

    .line 114
    invoke-virtual {p1, v0, v1, p2, v3}, Lcom/coloros/settings/feature/weather/module/a/a;->a(JZZ)V

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 21037
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/a/a;->d:Lcom/coloros/settings/feature/weather/module/a/a$b;

    .line 116
    iput-boolean v2, p1, Lcom/coloros/settings/feature/weather/module/a/a$b;->b:Z

    goto :goto_1

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 22037
    iget-boolean p1, p1, Lcom/coloros/settings/feature/weather/module/a/a;->f:Z

    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    const-wide/16 v3, 0x1

    invoke-virtual {p1, v3, v4, v1, v1}, Lcom/coloros/settings/feature/weather/module/a/a;->a(JZZ)V

    .line 121
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 23037
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 24037
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    .line 122
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/weather/module/a/a$a;

    invoke-interface {p1}, Lcom/coloros/settings/feature/weather/module/a/a$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 1037
    iget-object v1, v1, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 2037
    iget-object v1, v1, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 3037
    iput-boolean p1, v0, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    const/4 p1, 0x0

    .line 4037
    iput-object p1, v0, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    .line 5037
    iput-object p1, v0, Lcom/coloros/settings/feature/weather/module/a/a;->a:Lcom/coloros/d/a/a/a;

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onServiceDisconnected mCount = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 6037
    iget v0, v0, Lcom/coloros/settings/feature/weather/module/a/a;->h:I

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WeatherServiceBridge"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 7037
    iget p1, p1, Lcom/coloros/settings/feature/weather/module/a/a;->h:I

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    return-void

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 8037
    iget v0, p1, Lcom/coloros/settings/feature/weather/module/a/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/coloros/settings/feature/weather/module/a/a;->h:I

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$2;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/a/a;->b()V

    return-void
.end method
