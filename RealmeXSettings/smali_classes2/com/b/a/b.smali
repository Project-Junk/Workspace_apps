.class public Lcom/b/a/b;
.super Lcom/b/a/o;
.source "OapsWrapper.java"


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/b/a/o;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/b/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/b/a/b;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0, p0}, Lcom/b/a/b;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/b/a/b;
    .locals 1

    const-string v0, "scheme"

    .line 32
    invoke-super {p0, v0, p1}, Lcom/b/a/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/b;

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "scheme"

    .line 37
    invoke-virtual {p0, v0}, Lcom/b/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/b/a/b;
    .locals 1

    const-string v0, "host"

    .line 44
    invoke-super {p0, v0, p1}, Lcom/b/a/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/b;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "host"

    .line 49
    invoke-virtual {p0, v0}, Lcom/b/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/b/a/b;
    .locals 1

    const-string v0, "path"

    .line 56
    invoke-super {p0, v0, p1}, Lcom/b/a/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/b;

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "path"

    .line 61
    invoke-virtual {p0, v0}, Lcom/b/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method
