.class public final Lcom/nearme/instant/router/g/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/nearme/instant/router/g/c;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ts"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "version"

    const-string v1, "1.1.2_ccfd188_180718"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p2}, Lcom/nearme/instant/router/g/c;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nearme/instant/router/c/a;
        }
    .end annotation

    invoke-static {p0}, Lcom/nearme/instant/router/g/j;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/nearme/instant/router/c/a;

    const/16 v0, 0x68

    invoke-direct {p0, v0, p1}, Lcom/nearme/instant/router/c/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nearme/instant/router/c/a;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/nearme/instant/router/g/j;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/nearme/instant/router/c/a;

    const/16 p1, 0x69

    invoke-direct {p0, p1, p2}, Lcom/nearme/instant/router/c/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/nearme/instant/router/callback/Callback;)V
    .locals 11

    const-class v1, Lcom/nearme/instant/router/g/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nearme/instant/router/g/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nearme/instant/router/g/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "instant-req"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/nearme/instant/router/g/c;->a:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/nearme/instant/router/g/c;->a:Landroid/os/Handler;

    :cond_2
    :goto_0
    sget-object v0, Lcom/nearme/instant/router/g/c;->a:Landroid/os/Handler;

    new-instance v10, Lcom/nearme/instant/router/g/d;

    move-object v2, v10

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p0

    move-object v6, p3

    move-object v7, p2

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/nearme/instant/router/g/d;-><init>(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nearme/instant/router/callback/Callback;)V
    .locals 2

    new-instance v0, Lcom/nearme/instant/router/callback/Callback$Response;

    invoke-direct {v0}, Lcom/nearme/instant/router/callback/Callback$Response;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nearme/instant/router/callback/Callback$Response;->setCode(I)V

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/nearme/instant/router/callback/Callback$Response;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nearme/instant/router/callback/Callback;->onResponse(Lcom/nearme/instant/router/callback/Callback$Response;)V

    return-void
.end method

.method static synthetic a(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nearme/instant/router/g/c;->c(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;Lcom/nearme/instant/router/callback/Callback;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p0, Lcom/nearme/instant/router/g/c;->b:Landroid/os/Handler;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/nearme/instant/router/g/c;->b:Landroid/os/Handler;

    :cond_0
    sget-object p0, Lcom/nearme/instant/router/g/c;->b:Landroid/os/Handler;

    new-instance p2, Lcom/nearme/instant/router/g/e;

    invoke-direct {p2, p1, v0, p3}, Lcom/nearme/instant/router/g/e;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/nearme/instant/router/callback/Callback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {p3, p0}, Lcom/nearme/instant/router/g/c;->c(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nearme/instant/router/c/a;
        }
    .end annotation

    const-string v0, "origin"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "secret"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/nearme/instant/router/c/a;

    const/16 v0, 0x67

    invoke-direct {p0, v0, p1}, Lcom/nearme/instant/router/c/a;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/nearme/instant/router/c/a;

    const/16 v0, 0x66

    invoke-direct {p0, v0, p1}, Lcom/nearme/instant/router/c/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oaps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "instant"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/nearme/instant/router/g/c;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p2}, Lcom/nearme/instant/router/g/c;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nearme/instant/router/c/a;
        }
    .end annotation

    invoke-static {p0}, Lcom/nearme/instant/router/g/j;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/nearme/instant/router/c/a;

    const/16 v0, 0x68

    invoke-direct {p0, v0, p1}, Lcom/nearme/instant/router/c/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/nearme/instant/router/callback/Callback;)V
    .locals 2

    new-instance v0, Lcom/nearme/instant/router/callback/Callback$Response;

    invoke-direct {v0}, Lcom/nearme/instant/router/callback/Callback$Response;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nearme/instant/router/callback/Callback$Response;->setCode(I)V

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/nearme/instant/router/callback/Callback$Response;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nearme/instant/router/callback/Callback;->onResponse(Lcom/nearme/instant/router/callback/Callback$Response;)V

    return-void
.end method

.method static synthetic b(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nearme/instant/router/g/c;->d(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;Lcom/nearme/instant/router/callback/Callback;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p0, Lcom/nearme/instant/router/g/c;->b:Landroid/os/Handler;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/nearme/instant/router/g/c;->b:Landroid/os/Handler;

    :cond_0
    sget-object p0, Lcom/nearme/instant/router/g/c;->b:Landroid/os/Handler;

    new-instance p2, Lcom/nearme/instant/router/g/e;

    invoke-direct {p2, p1, v0, p3}, Lcom/nearme/instant/router/g/e;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/nearme/instant/router/callback/Callback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {p3, p0}, Lcom/nearme/instant/router/g/c;->c(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nearme/instant/router/c/a;
        }
    .end annotation

    const-string v0, "origin"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "secret"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/nearme/instant/router/c/a;

    const/16 v0, 0x67

    invoke-direct {p0, v0, p1}, Lcom/nearme/instant/router/c/a;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/nearme/instant/router/c/a;

    const/16 v0, 0x66

    invoke-direct {p0, v0, p1}, Lcom/nearme/instant/router/c/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/nearme/instant/router/g/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nearme/instant/router/g/g;

    invoke-direct {v1, p0, p1}, Lcom/nearme/instant/router/g/g;-><init>(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/nearme/instant/router/g/c;->d(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nearme/instant/router/c/a;
        }
    .end annotation

    invoke-static {p0}, Lcom/nearme/instant/router/g/c;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/nearme/instant/router/c/a;

    const/16 v0, 0x65

    invoke-direct {p0, v0, p1}, Lcom/nearme/instant/router/c/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static d(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ts"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "version"

    const-string v1, "1.1.2_ccfd188_180718"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static d(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcom/nearme/instant/router/callback/Callback$Response;

    invoke-direct {v0}, Lcom/nearme/instant/router/callback/Callback$Response;-><init>()V

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/nearme/instant/router/callback/Callback$Response;->setCode(I)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nearme/instant/router/callback/Callback$Response;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nearme/instant/router/callback/Callback;->onResponse(Lcom/nearme/instant/router/callback/Callback$Response;)V

    return-void
.end method
