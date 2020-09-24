.class public final Lcom/b/a/a/a;
.super Ljava/lang/Object;
.source "Oaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/b/a/a/a/a;

.field c:Landroid/content/Context;

.field d:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/b/a/a/a/a;Landroid/content/ContentValues;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/b/a/a/a/a;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/b/a/a/a;->c:Landroid/content/Context;

    .line 245
    iput-object p2, p0, Lcom/b/a/a/a;->a:Ljava/util/Map;

    .line 246
    iput-object p3, p0, Lcom/b/a/a/a;->b:Lcom/b/a/a/a/a;

    .line 247
    iput-object p4, p0, Lcom/b/a/a/a;->d:Landroid/content/ContentValues;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/b/a/a/a/a;Landroid/content/ContentValues;B)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/a/a/a;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/b/a/a/a/a;Landroid/content/ContentValues;)V

    return-void
.end method

.method public static a()Lcom/b/a/a/a$a;
    .locals 2

    .line 236
    new-instance v0, Lcom/b/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/a/a$a;-><init>(B)V

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 416
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 315
    invoke-static {p1}, Lcom/b/a/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 323
    invoke-static {p1}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gc"

    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "mk_op"

    const-string v4, "mk"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const-string v2, "com.nearme.gamecenter"

    .line 325
    invoke-static {p0, v2}, Lcom/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v5

    .line 328
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Y29tLm9wcG8ubWFya2V0"

    .line 4026
    invoke-static {v2}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {p0, v2}, Lcom/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.heytap.market"

    invoke-static {p0, v2}, Lcom/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v5

    .line 332
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Y29tLm9uZXBsdXMubWFya2V0"

    .line 5022
    invoke-static {v2}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-static {p0, v2}, Lcom/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v5

    .line 337
    :cond_2
    invoke-static {p1}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {p0, p1}, Lcom/b/a/ae;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 340
    invoke-static {p0, v2}, Lcom/b/a/af;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 342
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 343
    invoke-interface {v6, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6018
    new-instance p1, Lcom/b/a/c/g;

    invoke-direct {p1, v6}, Lcom/b/a/c/g;-><init>(Ljava/util/Map;)V

    const-string v7, "tp"

    .line 6022
    invoke-virtual {p1, v7, v2}, Lcom/b/a/c/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/b;

    const-string v7, "oaps"

    .line 344
    invoke-virtual {p1, v7}, Lcom/b/a/c/b;->a(Ljava/lang/String;)Lcom/b/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/b/a/b;->b(Ljava/lang/String;)Lcom/b/a/b;

    move-result-object p1

    const-string v7, "/support"

    invoke-virtual {p1, v7}, Lcom/b/a/b;->c(Ljava/lang/String;)Lcom/b/a/b;

    .line 6099
    invoke-static {v6}, Lcom/b/a/p;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/b/a/t;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/p;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 348
    :try_start_0
    invoke-static {p1}, Lcom/b/a/p;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    .line 349
    invoke-static {p1}, Lcom/b/a/a/a;->a(Landroid/database/Cursor;)V

    .line 350
    invoke-static {p0}, Lcom/b/a/p;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/c/a;->a()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v5

    .line 353
    :goto_0
    invoke-static {p1}, Lcom/b/a/a/a;->a(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception p0

    invoke-static {p1}, Lcom/b/a/a/a;->a(Landroid/database/Cursor;)V

    throw p0

    :catch_0
    invoke-static {p1}, Lcom/b/a/a/a;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 356
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 357
    invoke-static {p0, v2}, Lcom/b/a/af;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 358
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 359
    invoke-static {p0, v2}, Lcom/b/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 360
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 361
    invoke-static {p0, v2}, Lcom/b/a/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_8
    :goto_1
    return v5
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 429
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 431
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final b()V
    .locals 11

    .line 240
    iget-object v0, p0, Lcom/b/a/a/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/b/a/a/a;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/b/a/a/a;->b:Lcom/b/a/a/a/a;

    iget-object v3, p0, Lcom/b/a/a/a;->d:Landroid/content/ContentValues;

    .line 1278
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x1d

    if-gt v6, v4, :cond_6

    invoke-static {v1}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/predown"

    .line 2038
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    const-string v6, "/dl"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/dl/v2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/dl/x"

    .line 2039
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/order/dtb"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/dl/rdt"

    .line 2040
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/bootreg/dat"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/dl/cloud"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/cta"

    .line 2041
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/book/sql"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/book/sql2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v7

    :goto_1
    if-nez v4, :cond_6

    .line 2305
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_2

    .line 2307
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2309
    :cond_2
    sget-object v1, Lcom/b/a/p;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2310
    invoke-static {v3}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v1

    sget-object v4, Lcom/b/a/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/b/a/c/b;->h(Ljava/lang/String;)Lcom/b/a/c/b;

    :cond_3
    const-string v1, "version"

    const-string v4, "3.0.1"

    .line 2312
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    invoke-static {v0, v3}, Lcom/b/a/b/a/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v0

    if-eqz v2, :cond_5

    .line 1282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_4

    .line 1284
    invoke-static {v1}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/b/a/c/a;->a(I)Lcom/b/a/c/a;

    move-result-object v0

    const-string v4, "call success"

    .line 1285
    invoke-virtual {v0, v4}, Lcom/b/a/c/a;->a(Ljava/lang/Object;)Lcom/b/a/c/a;

    goto :goto_2

    .line 1287
    :cond_4
    invoke-static {v1}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v0

    const/4 v4, -0x8

    invoke-virtual {v0, v4}, Lcom/b/a/c/a;->a(I)Lcom/b/a/c/a;

    move-result-object v0

    const-string v4, "fail: fail to launch by compatibility way"

    .line 1288
    invoke-virtual {v0, v4}, Lcom/b/a/c/a;->a(Ljava/lang/Object;)Lcom/b/a/c/a;

    .line 1290
    :goto_2
    invoke-static {v1}, Lcom/b/a/p;->a(Ljava/util/Map;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/b/a/a/a/a;->a(Ljava/util/Map;Landroid/database/Cursor;)V

    :cond_5
    return-void

    .line 1294
    :cond_6
    invoke-static {v0, v1}, Lcom/b/a/ae;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v4

    const/16 v6, -0x9

    if-eqz v4, :cond_f

    if-nez v2, :cond_7

    .line 3042
    new-instance v2, Lcom/b/a/r;

    invoke-direct {v2}, Lcom/b/a/r;-><init>()V

    .line 3044
    :cond_7
    new-instance v4, Lcom/b/a/q;

    invoke-direct {v4, v0, v2}, Lcom/b/a/q;-><init>(Landroid/content/Context;Lcom/b/a/a/a/b;)V

    const/4 v2, 0x0

    const/16 v7, 0x18

    .line 3047
    :try_start_0
    invoke-static {v1}, Lcom/b/a/p;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 3048
    invoke-static {v8}, Lcom/b/a/t;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 3049
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3051
    new-instance v10, Lcom/b/a/a/b;

    invoke-direct {v10, v0, v8, v4, v9}, Lcom/b/a/a/b;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/b/a/a/a/b;Landroid/net/Uri;)V

    .line 3052
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3053
    invoke-virtual {v0, v9, v5, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/16 v5, 0x10

    .line 3055
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v8, :cond_8

    .line 3056
    invoke-virtual {v0, v9}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 3057
    invoke-virtual {v2, v9, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 3059
    :cond_8
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v2, :cond_c

    .line 3073
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_9

    .line 3074
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    return-void

    .line 3076
    :cond_9
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 3062
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3063
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3064
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Unknown URL"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3065
    invoke-static {v3}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/b/a/c/a;->a(I)Lcom/b/a/c/a;

    move-result-object v0

    const-string v5, "error: unknown url"

    invoke-virtual {v0, v5}, Lcom/b/a/c/a;->a(Ljava/lang/Object;)Lcom/b/a/c/a;

    goto :goto_4

    .line 3067
    :cond_a
    invoke-static {v3}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v0

    const/4 v5, -0x4

    invoke-virtual {v0, v5}, Lcom/b/a/c/a;->a(I)Lcom/b/a/c/a;

    move-result-object v0

    const-string v5, "error: fail access provider"

    invoke-virtual {v0, v5}, Lcom/b/a/c/a;->a(Ljava/lang/Object;)Lcom/b/a/c/a;

    .line 3070
    :goto_4
    invoke-static {v3}, Lcom/b/a/p;->a(Ljava/util/Map;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/b/a/q;->a(Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_c

    .line 3073
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_b

    .line 3074
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    return-void

    .line 3076
    :cond_b
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_c
    return-void

    :goto_5
    if-eqz v2, :cond_e

    .line 3073
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_d

    .line 3074
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_6

    .line 3076
    :cond_d
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_e
    :goto_6
    throw v0

    .line 3093
    :cond_f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3094
    invoke-static {v3}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/b/a/c/a;->a(I)Lcom/b/a/c/a;

    .line 3095
    new-instance v4, Lcom/b/a/q;

    invoke-direct {v4, v0, v2}, Lcom/b/a/q;-><init>(Landroid/content/Context;Lcom/b/a/a/a/b;)V

    invoke-static {v3}, Lcom/b/a/p;->a(Ljava/util/Map;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/b/a/q;->a(Ljava/util/Map;Landroid/database/Cursor;)V

    return-void
.end method
