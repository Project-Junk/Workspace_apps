.class public final Lcom/google/a/b/e;
.super Ljava/lang/Object;
.source "Multisets.java"


# direct methods
.method private static synthetic a(Lcom/google/a/b/d$a;)Ljava/util/Spliterator;
    .locals 1

    .line 1110
    invoke-interface {p0}, Lcom/google/a/b/d$a;->b()I

    move-result v0

    invoke-interface {p0}, Lcom/google/a/b/d$a;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/google/a/b/d;)Ljava/util/Spliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/b/d<",
            "TE;>;)",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1107
    invoke-interface {p0}, Lcom/google/a/b/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v3

    .line 1108
    sget-object v7, Lcom/google/a/b/-$$Lambda$e$qAygKVcenR8y84GsQkUL0ErKL0w;->INSTANCE:Lcom/google/a/b/-$$Lambda$e$qAygKVcenR8y84GsQkUL0ErKL0w;

    .line 1112
    invoke-interface {v3}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, 0x510

    or-int/lit8 v4, v0, 0x40

    .line 1114
    invoke-interface {p0}, Lcom/google/a/b/d;->size()I

    move-result p0

    int-to-long v5, p0

    and-int/lit16 p0, v4, 0x4000

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const-string v2, "flatMap does not support SUBSIZED characteristic"

    .line 1202
    invoke-static {p0, v2}, Lcom/google/a/a/c;->a(ZLjava/lang/Object;)V

    and-int/lit8 p0, v4, 0x4

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string p0, "flatMap does not support SORTED characteristic"

    .line 1205
    invoke-static {v0, p0}, Lcom/google/a/a/c;->a(ZLjava/lang/Object;)V

    .line 1208
    invoke-static {v3}, Lcom/google/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    invoke-static {v7}, Lcom/google/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    new-instance p0, Lcom/google/a/b/c$a;

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/a/b/c$a;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;IJLjava/util/function/Function;)V

    return-object p0
.end method

.method public static synthetic lambda$qAygKVcenR8y84GsQkUL0ErKL0w(Lcom/google/a/b/d$a;)Ljava/util/Spliterator;
    .locals 0

    invoke-static {p0}, Lcom/google/a/b/e;->a(Lcom/google/a/b/d$a;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
