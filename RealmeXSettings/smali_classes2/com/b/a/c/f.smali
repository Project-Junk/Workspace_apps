.class public final Lcom/b/a/c/f;
.super Lcom/b/a/c/b;
.source "SearchWrapper.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


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

    .line 17
    invoke-direct {p0, p1}, Lcom/b/a/c/b;-><init>(Ljava/util/Map;)V

    const-string p1, "sfl"

    .line 11
    iput-object p1, p0, Lcom/b/a/c/f;->b:Ljava/lang/String;

    const-string p1, "shi"

    .line 12
    iput-object p1, p0, Lcom/b/a/c/f;->c:Ljava/lang/String;

    const-string p1, "sfr"

    .line 13
    iput-object p1, p0, Lcom/b/a/c/f;->d:Ljava/lang/String;

    const-string p1, "sfi"

    .line 14
    iput-object p1, p0, Lcom/b/a/c/f;->e:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/util/Map;)Lcom/b/a/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/b/a/c/f;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/b/a/c/f;

    invoke-direct {v0, p0}, Lcom/b/a/c/f;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "kw"

    .line 30
    invoke-virtual {p0, v0}, Lcom/b/a/c/f;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "pkg"

    .line 42
    invoke-virtual {p0, v0}, Lcom/b/a/c/f;->d(Ljava/lang/String;)Ljava/lang/Object;

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
    const-string v0, "ad"

    .line 54
    invoke-virtual {p0, v0}, Lcom/b/a/c/f;->g(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
