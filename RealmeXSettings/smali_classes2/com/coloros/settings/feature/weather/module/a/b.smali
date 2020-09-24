.class public Lcom/coloros/settings/feature/weather/module/a/b;
.super Lcom/coloros/d/a/a/a$a;
.source "WeatherUpdateMonitor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static volatile b:Lcom/coloros/settings/feature/weather/module/a/b;


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/coloros/d/a/a/a$a;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/b;->a:Ljava/util/ArrayList;

    .line 1076
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.coloros.weather.service.provider.data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "attent_city"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1076
    new-instance v1, Lcom/coloros/settings/feature/weather/module/a/b$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/weather/module/a/b$1;-><init>(Lcom/coloros/settings/feature/weather/module/a/b;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/coloros/settings/feature/weather/module/a/b;
    .locals 2

    .line 34
    sget-object v0, Lcom/coloros/settings/feature/weather/module/a/b;->b:Lcom/coloros/settings/feature/weather/module/a/b;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/coloros/settings/feature/weather/module/a/b;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/coloros/settings/feature/weather/module/a/b;->b:Lcom/coloros/settings/feature/weather/module/a/b;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/coloros/settings/feature/weather/module/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/weather/module/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/settings/feature/weather/module/a/b;->b:Lcom/coloros/settings/feature/weather/module/a/b;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 41
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/settings/feature/weather/module/a/b;->b:Lcom/coloros/settings/feature/weather/module/a/b;

    return-object p0
.end method


# virtual methods
.method public final a(JZI)V
    .locals 0

    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 50
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    return p1
.end method
