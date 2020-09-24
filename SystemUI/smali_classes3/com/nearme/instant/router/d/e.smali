.class final Lcom/nearme/instant/router/d/e;
.super Lcom/nearme/instant/router/d/a;


# direct methods
.method constructor <init>(Lcom/nearme/instant/router/d/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nearme/instant/router/d/a;-><init>(Lcom/nearme/instant/router/d/b;)V

    return-void
.end method


# virtual methods
.method public final request(Landroid/content/Context;)V
    .locals 7

    iget-object v1, p0, Lcom/nearme/instant/router/d/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/nearme/instant/router/d/e;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/nearme/instant/router/d/e;->b:Ljava/util/Map;

    iget-object v4, p0, Lcom/nearme/instant/router/d/e;->c:Ljava/util/Map;

    iget-object v5, p0, Lcom/nearme/instant/router/d/e;->d:Ljava/util/Map;

    iget-object v6, p0, Lcom/nearme/instant/router/d/e;->e:Lcom/nearme/instant/router/callback/Callback;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/nearme/instant/router/callback/Callback;)V

    return-void
.end method
