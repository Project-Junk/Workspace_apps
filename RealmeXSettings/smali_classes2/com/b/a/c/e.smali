.class public final Lcom/b/a/c/e;
.super Lcom/b/a/c/c;
.source "ResourceWrapper.java"


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

    .line 12
    invoke-direct {p0, p1}, Lcom/b/a/c/c;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static b(Ljava/util/Map;)Lcom/b/a/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/b/a/c/e;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/b/a/c/e;

    invoke-direct {v0, p0}, Lcom/b/a/c/e;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "pkg"

    .line 25
    invoke-virtual {p0, v0}, Lcom/b/a/c/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final m()Z
    .locals 1

    :try_start_0
    const-string v0, "atd"

    .line 37
    invoke-virtual {p0, v0}, Lcom/b/a/c/e;->g(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
