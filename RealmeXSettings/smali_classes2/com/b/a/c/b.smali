.class public Lcom/b/a/c/b;
.super Lcom/b/a/b;
.source "BaseWrapper.java"


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

    .line 12
    invoke-direct {p0, p1}, Lcom/b/a/b;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static c(Ljava/util/Map;)Lcom/b/a/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/b/a/c/b;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/b/a/c/b;

    invoke-direct {v0, p0}, Lcom/b/a/c/b;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "goback"

    .line 73
    invoke-virtual {p0, v0}, Lcom/b/a/c/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "enterId"

    .line 85
    invoke-virtual {p0, v0}, Lcom/b/a/c/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/b/a/c/b;
    .locals 1

    const-string v0, "enterId"

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/b;

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "enterMod"

    .line 97
    invoke-virtual {p0, v0}, Lcom/b/a/c/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lcom/b/a/c/b;
    .locals 1

    const-string v0, "secret"

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/b;

    return-object p1
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "Ext-Module"

    .line 109
    invoke-virtual {p0, v0}, Lcom/b/a/c/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Lcom/b/a/c/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "sgtp"

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/b;

    return-object p1
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "enterMod2"

    .line 121
    invoke-virtual {p0, v0}, Lcom/b/a/c/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Lcom/b/a/c/b;
    .locals 1

    const-string v0, "base_pkg"

    .line 154
    invoke-virtual {p0, v0, p1}, Lcom/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/b;

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "base_pkg"

    .line 159
    invoke-virtual {p0, v0}, Lcom/b/a/c/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method
