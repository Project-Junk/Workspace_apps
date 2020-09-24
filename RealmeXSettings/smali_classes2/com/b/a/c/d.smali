.class public final Lcom/b/a/c/d;
.super Lcom/b/a/c/c;
.source "PreDownWrapper.java"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
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

    .line 14
    invoke-direct {p0, p1}, Lcom/b/a/c/c;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "pkg"

    .line 30
    invoke-virtual {p0, v0}, Lcom/b/a/c/d;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final m()I
    .locals 1

    :try_start_0
    const-string v0, "type"

    .line 42
    invoke-virtual {p0, v0}, Lcom/b/a/c/d;->e(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method
