.class public final Lcom/b/a/c/h;
.super Lcom/b/a/c/b;
.source "VerifyWrapper.java"


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
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

    .line 15
    invoke-direct {p0, p1}, Lcom/b/a/c/b;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static b(Ljava/util/Map;)Lcom/b/a/c/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/b/a/c/h;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/b/a/c/h;

    invoke-direct {v0, p0}, Lcom/b/a/c/h;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "src"

    .line 28
    invoke-virtual {p0, v0}, Lcom/b/a/c/h;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final l(Ljava/lang/String;)Lcom/b/a/c/h;
    .locals 1

    const-string v0, "src"

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/b/a/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/h;

    return-object p1
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "ts"

    .line 40
    invoke-virtual {p0, v0}, Lcom/b/a/c/h;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Lcom/b/a/c/h;
    .locals 1

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ts"

    invoke-virtual {p0, v0, p1}, Lcom/b/a/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/h;

    return-object p1
.end method

.method public final n(Ljava/lang/String;)Lcom/b/a/c/h;
    .locals 1

    const-string v0, "ck"

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/b/a/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/h;

    return-object p1
.end method
