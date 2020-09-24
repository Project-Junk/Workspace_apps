.class public final Lcom/b/a/c/a;
.super Lcom/b/a/o;
.source "BaseRespWrapper.java"


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

    .line 18
    invoke-direct {p0, p1}, Lcom/b/a/o;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/b/a/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/b/a/c/a;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/b/a/c/a;

    invoke-direct {v0, p0}, Lcom/b/a/c/a;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    :try_start_0
    const-string v0, "code"

    .line 31
    invoke-virtual {p0, v0}, Lcom/b/a/c/a;->e(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public final a(I)Lcom/b/a/c/a;
    .locals 1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-super {p0, v0, p1}, Lcom/b/a/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/a;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Lcom/b/a/c/a;
    .locals 1

    const-string v0, "content"

    .line 38
    invoke-super {p0, v0, p1}, Lcom/b/a/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    move-result-object p1

    check-cast p1, Lcom/b/a/c/a;

    return-object p1
.end method

.method public final b()[B
    .locals 1

    :try_start_0
    const-string v0, "byd"

    .line 55
    invoke-virtual {p0, v0}, Lcom/b/a/c/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
