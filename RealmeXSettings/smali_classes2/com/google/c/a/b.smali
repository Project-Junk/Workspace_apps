.class public final Lcom/google/c/a/b;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/c/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/c;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/h;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/google/c/a/b/a;

    invoke-virtual {p1}, Lcom/google/c/c;->a()Lcom/google/c/b/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/c/a/b/a;-><init>(Lcom/google/c/b/b;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 65
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/c/a/b/a;->a(Z)Lcom/google/c/a/a;

    move-result-object p1

    .line 1043
    iget-object v2, p1, Lcom/google/c/b/g;->e:[Lcom/google/c/q;
    :try_end_0
    .catch Lcom/google/c/l; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/c/h; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :try_start_1
    new-instance v3, Lcom/google/c/a/a/a;

    invoke-direct {v3}, Lcom/google/c/a/a/a;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/c/a/a/a;->a(Lcom/google/c/a/a;)Lcom/google/c/b/e;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/c/l; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/c/h; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v1

    :goto_0
    move-object v3, v2

    move-object v2, p1

    move-object p1, v1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v2, v1

    :goto_1
    move-object v3, v2

    move-object v2, v1

    :goto_2
    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 75
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/c/a/b/a;->a(Z)Lcom/google/c/a/a;

    move-result-object v0

    .line 2043
    iget-object v3, v0, Lcom/google/c/b/g;->e:[Lcom/google/c/q;

    .line 77
    new-instance v1, Lcom/google/c/a/a/a;

    invoke-direct {v1}, Lcom/google/c/a/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/c/a/a/a;->a(Lcom/google/c/a/a;)Lcom/google/c/b/e;

    move-result-object v1
    :try_end_2
    .catch Lcom/google/c/l; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/c/h; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    if-nez p1, :cond_1

    if-eqz v2, :cond_0

    .line 92
    throw v2

    .line 94
    :cond_0
    throw p2

    .line 89
    :cond_1
    throw p1

    :catch_5
    move-exception p2

    if-nez p1, :cond_3

    if-eqz v2, :cond_2

    .line 83
    throw v2

    .line 85
    :cond_2
    throw p2

    .line 80
    :cond_3
    throw p1

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    .line 99
    sget-object p1, Lcom/google/c/e;->j:Lcom/google/c/e;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_5
    new-instance p1, Lcom/google/c/o;

    .line 2053
    iget-object p2, v1, Lcom/google/c/b/e;->b:Ljava/lang/String;

    .line 3049
    iget-object v0, v1, Lcom/google/c/b/e;->a:[B

    .line 107
    sget-object v2, Lcom/google/c/a;->a:Lcom/google/c/a;

    invoke-direct {p1, p2, v0, v3, v2}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    .line 3057
    iget-object p2, v1, Lcom/google/c/b/e;->c:Ljava/util/List;

    if-eqz p2, :cond_6

    .line 111
    sget-object v0, Lcom/google/c/p;->c:Lcom/google/c/p;

    invoke-virtual {p1, v0, p2}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    .line 3061
    :cond_6
    iget-object p2, v1, Lcom/google/c/b/e;->d:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 115
    sget-object v0, Lcom/google/c/p;->d:Lcom/google/c/p;

    invoke-virtual {p1, v0, p2}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    :cond_7
    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method
