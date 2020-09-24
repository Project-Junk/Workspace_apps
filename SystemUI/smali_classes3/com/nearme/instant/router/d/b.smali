.class public final Lcom/nearme/instant/router/d/b;
.super Lcom/nearme/instant/router/Instant$Builder;


# instance fields
.field a:Ljava/util/Map;

.field b:Ljava/util/Map;

.field c:Ljava/util/Map;

.field d:Ljava/util/Map;

.field e:Lcom/nearme/instant/router/callback/Callback;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/nearme/instant/router/Instant$Builder;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nearme/instant/router/d/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nearme/instant/router/d/b;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nearme/instant/router/d/b;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/nearme/instant/router/d/b;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->b:Ljava/util/Map;

    const-string v1, "origin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/nearme/instant/router/d/b;->b:Ljava/util/Map;

    const-string p1, "secret"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->b:Ljava/util/Map;

    const-string v1, "secret"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->b:Ljava/util/Map;

    const-string v1, "origin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/nearme/instant/router/Instant$Req;
    .locals 2

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->f:Ljava/lang/String;

    const-string v1, "oaps://instant/app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nearme/instant/router/d/e;

    invoke-direct {v0, p0}, Lcom/nearme/instant/router/d/e;-><init>(Lcom/nearme/instant/router/d/b;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/nearme/instant/router/d/d;

    invoke-direct {v0, p0}, Lcom/nearme/instant/router/d/d;-><init>(Lcom/nearme/instant/router/d/b;)V

    return-object v0
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nearme/instant/router/d/b;->d:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putStat(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nearme/instant/router/d/b;->c:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setCallback(Lcom/nearme/instant/router/callback/Callback;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nearme/instant/router/d/b;->e:Lcom/nearme/instant/router/callback/Callback;

    return-object p0
.end method

.method public final setExtra(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->a:Ljava/util/Map;

    const-string v1, "ext"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setFrom(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->a:Ljava/util/Map;

    const-string v1, "f"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setPackage(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->a:Ljava/util/Map;

    const-string v1, "pkg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setPage(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->a:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setPath(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 2

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->a:Ljava/util/Map;

    const-string v1, "path"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setRequestUrl(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nearme/instant/router/d/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final signAsPlatform()Lcom/nearme/instant/router/Instant$Builder;
    .locals 3

    iget-object v0, p0, Lcom/nearme/instant/router/d/b;->b:Ljava/util/Map;

    const-string v1, "sgtp"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
