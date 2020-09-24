.class public final Lcom/b/a/b/a/a/a;
.super Ljava/lang/Object;
.source "LauncherHelper.java"


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mk"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "mk_op"

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string p1, "Y29tLm9wcG8ubWFya2V0"

    .line 1026
    invoke-static {p1}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Lcom/b/a/ae;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.heytap.market"

    .line 73
    invoke-static {p0, p1}, Lcom/b/a/ae;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Y29tLm9uZXBsdXMubWFya2V0"

    .line 2022
    invoke-static {p1}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Lcom/b/a/ae;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v0, v2

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Z
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

    .line 59
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v0

    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/b/a/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/c/b;->b(Ljava/lang/String;)Lcom/b/a/b;

    .line 60
    invoke-static {p1}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ab;->a(Ljava/lang/String;)Lcom/b/a/aa;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/b/a/aa;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/util/Map;)Z
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

    .line 64
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v0

    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/b/a/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/c/b;->b(Ljava/lang/String;)Lcom/b/a/b;

    .line 65
    invoke-static {p1}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ab;->a(Ljava/lang/String;)Lcom/b/a/aa;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/b/a/aa;->b(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method
