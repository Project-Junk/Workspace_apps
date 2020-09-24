.class public final Lcom/b/a/ad;
.super Ljava/lang/Object;
.source "MarketOPLauncher.java"

# interfaces
.implements Lcom/b/a/aa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 13
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

    .line 19
    invoke-static {p2}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mk_op"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Y29tLm9uZXBsdXMubWFya2V0"

    .line 1022
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {p1, v1}, Lcom/b/a/ae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const v2, 0x1e8480

    if-ge v1, v2, :cond_6

    .line 2022
    invoke-static {p2}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object p2

    .line 2024
    invoke-virtual {p2}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2026
    invoke-virtual {p2}, Lcom/b/a/b;->d()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/c/e;->b(Ljava/util/Map;)Lcom/b/a/c/e;

    move-result-object v1

    .line 2028
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lcom/b/a/m;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2030
    invoke-virtual {v1}, Lcom/b/a/c/e;->l()J

    move-result-wide v6

    .line 2031
    invoke-virtual {v1}, Lcom/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v4

    .line 2032
    invoke-virtual {v1}, Lcom/b/a/c/e;->m()Z

    move-result v8

    .line 2034
    invoke-virtual {v1}, Lcom/b/a/c/e;->f()Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    .line 2033
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2035
    invoke-virtual {v1}, Lcom/b/a/c/e;->g()Ljava/lang/String;

    move-result-object v1

    .line 2036
    invoke-static {v1}, Lcom/b/a/l;->a(Ljava/lang/String;)I

    move-result v10

    const-wide/16 v11, 0x0

    cmp-long v1, v6, v11

    if-lez v1, :cond_0

    move-object v5, p1

    .line 2038
    invoke-static/range {v5 .. v10}, Lcom/b/a/k;->a(Landroid/content/Context;JZZI)Z

    move-result p1

    return p1

    :cond_0
    if-eqz v4, :cond_2

    .line 2072
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    .line 2041
    invoke-static {p1, v4, v8, v9, v10}, Lcom/b/a/k;->a(Landroid/content/Context;Ljava/lang/String;ZZI)Z

    move-result p1

    return p1

    .line 2047
    :cond_3
    invoke-virtual {p2}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/search"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2048
    invoke-virtual {p2}, Lcom/b/a/b;->d()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/c/f;->b(Ljava/util/Map;)Lcom/b/a/c/f;

    move-result-object v1

    .line 2050
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lcom/b/a/m;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2052
    invoke-virtual {v1}, Lcom/b/a/c/f;->e()Ljava/lang/String;

    move-result-object p2

    .line 2053
    invoke-virtual {v1}, Lcom/b/a/c/f;->l()Ljava/lang/String;

    move-result-object v0

    .line 2054
    invoke-virtual {v1}, Lcom/b/a/c/f;->g()Ljava/lang/String;

    move-result-object v1

    .line 2055
    invoke-static {v1}, Lcom/b/a/l;->a(Ljava/lang/String;)I

    move-result v1

    .line 2056
    invoke-static {p1, p2, v0, v1}, Lcom/b/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 2061
    :cond_4
    invoke-virtual {p2}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object p2

    const-string v1, "/home"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2063
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/b/a/m;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2065
    invoke-static {p1}, Lcom/b/a/k;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_5
    return v2

    .line 27
    :cond_6
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/b/a/y;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 2
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

    .line 32
    invoke-static {p2}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mk_op"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Y29tLm9uZXBsdXMubWFya2V0"

    .line 3022
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Lcom/b/a/ae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x1e8480

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 40
    :cond_0
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/b/a/y;->b(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
