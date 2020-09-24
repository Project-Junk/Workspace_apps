.class public final Lcom/google/c/e/p;
.super Lcom/google/c/e/q;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private final a:[Lcom/google/c/e/x;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/google/c/e/q;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lcom/google/c/e;->c:Lcom/google/c/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 46
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 48
    sget-object v1, Lcom/google/c/a;->h:Lcom/google/c/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    new-instance v1, Lcom/google/c/e/h;

    invoke-direct {v1}, Lcom/google/c/e/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_1
    sget-object v1, Lcom/google/c/a;->o:Lcom/google/c/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    new-instance v1, Lcom/google/c/e/s;

    invoke-direct {v1}, Lcom/google/c/e/s;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    :goto_1
    sget-object v1, Lcom/google/c/a;->g:Lcom/google/c/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    new-instance v1, Lcom/google/c/e/j;

    invoke-direct {v1}, Lcom/google/c/e/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    sget-object v1, Lcom/google/c/a;->p:Lcom/google/c/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 57
    new-instance p1, Lcom/google/c/e/z;

    invoke-direct {p1}, Lcom/google/c/e/z;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 61
    new-instance p1, Lcom/google/c/e/h;

    invoke-direct {p1}, Lcom/google/c/e/h;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p1, Lcom/google/c/e/j;

    invoke-direct {p1}, Lcom/google/c/e/j;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p1, Lcom/google/c/e/z;

    invoke-direct {p1}, Lcom/google/c/e/z;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/c/e/x;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/c/e/x;

    iput-object p1, p0, Lcom/google/c/e/p;->a:[Lcom/google/c/e/x;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/c/b/a;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 74
    invoke-static {p2}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;)[I

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/c/e/p;->a:[Lcom/google/c/e/x;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 78
    :try_start_0
    invoke-virtual {v5, p1, p2, v0, p3}, Lcom/google/c/e/x;->a(ILcom/google/c/b/a;[ILjava/util/Map;)Lcom/google/c/o;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/c/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    iget-object p2, p1, Lcom/google/c/o;->d:Lcom/google/c/a;

    .line 94
    sget-object v0, Lcom/google/c/a;->h:Lcom/google/c/a;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 2060
    iget-object p2, p1, Lcom/google/c/o;->a:Ljava/lang/String;

    .line 94
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x30

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    move p2, v3

    :goto_1
    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_2

    .line 98
    :cond_1
    sget-object v0, Lcom/google/c/e;->c:Lcom/google/c/e;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    :goto_2
    if-eqz p3, :cond_2

    .line 100
    sget-object v0, Lcom/google/c/a;->o:Lcom/google/c/a;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    move v3, v1

    :cond_3
    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    .line 104
    new-instance p2, Lcom/google/c/o;

    .line 3060
    iget-object p3, p1, Lcom/google/c/o;->a:Ljava/lang/String;

    .line 104
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 3067
    iget-object v0, p1, Lcom/google/c/o;->b:[B

    .line 3076
    iget-object v1, p1, Lcom/google/c/o;->c:[Lcom/google/c/q;

    .line 104
    sget-object v2, Lcom/google/c/a;->o:Lcom/google/c/a;

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    .line 3092
    iget-object p1, p1, Lcom/google/c/o;->e:Ljava/util/Map;

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/c/o;->a(Ljava/util/Map;)V

    return-object p2

    :cond_4
    return-object p1

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    :cond_5
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/google/c/e/p;->a:[Lcom/google/c/e/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 120
    invoke-interface {v3}, Lcom/google/c/m;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
