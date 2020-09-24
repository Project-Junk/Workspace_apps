.class final Lcom/nearme/instant/router/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nearme/instant/router/callback/Callback;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Ljava/util/Map;

.field private synthetic e:Ljava/util/Map;

.field private synthetic f:Ljava/util/Map;

.field private synthetic g:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/nearme/instant/router/g/d;->a:Lcom/nearme/instant/router/callback/Callback;

    iput-object p2, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nearme/instant/router/g/d;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/nearme/instant/router/g/d;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/nearme/instant/router/g/d;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/nearme/instant/router/g/d;->f:Ljava/util/Map;

    iput-object p7, p0, Lcom/nearme/instant/router/g/d;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "sgtp"

    const-string v1, "origin"

    const-string v2, "pkg"

    const-string v3, "hap://"

    new-instance v4, Lcom/nearme/instant/router/callback/a;

    iget-object v5, p0, Lcom/nearme/instant/router/g/d;->a:Lcom/nearme/instant/router/callback/Callback;

    invoke-direct {v4, v5}, Lcom/nearme/instant/router/callback/a;-><init>(Lcom/nearme/instant/router/callback/Callback;)V

    :try_start_0
    const-string v5, ""

    iget-object v6, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_0

    :try_start_1
    iget-object v6, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/nearme/instant/router/g/d;->c:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/instant/router/g/d;->d:Ljava/util/Map;

    invoke-static {v2, v5}, Lcom/nearme/instant/router/g/c;->a(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/instant/router/g/d;->d:Ljava/util/Map;

    invoke-static {v2}, Lcom/nearme/instant/router/g/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const-string v5, "secret"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v2}, Lcom/nearme/instant/router/g/c;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/nearme/instant/router/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/nearme/instant/router/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    iget-object v9, p0, Lcom/nearme/instant/router/g/d;->d:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v0, v9}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "req_url"

    iget-object v9, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/nearme/instant/router/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v0, v5}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "from"

    const-string v5, "ins_sdk"

    invoke-static {v8, v0, v5}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v1, v6}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EXTRA_DEEPLINK_PARAMS"

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->e:Ljava/util/Map;

    invoke-static {v8, v0, v1}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "EXTRA_STAT_PARAMS"

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->f:Ljava/util/Map;

    invoke-static {v8, v0, v1}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "EXTRA_EXTEND_PARAMS"

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->g:Ljava/util/Map;

    invoke-static {v8, v0, v1}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/nearme/instant/router/e/a;

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/nearme/instant/router/e/a;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/nearme/instant/router/callback/Callback;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/nearme/instant/router/g/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {v4, p0}, Lcom/nearme/instant/router/g/c;->a(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to find provider hap_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, p0, v4}, Lcom/nearme/instant/router/g/c;->a(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;Lcom/nearme/instant/router/callback/Callback;)V

    :cond_1
    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown URL content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nearme/instant/router/g/d;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/nearme/instant/router/g/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, p0, v4}, Lcom/nearme/instant/router/g/c;->a(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;Lcom/nearme/instant/router/callback/Callback;)V

    :cond_2
    return-void
.end method
