.class public final Lcom/google/c/e/o;
.super Lcom/google/c/e/q;
.source "MultiFormatOneDReader.java"


# instance fields
.field private final a:[Lcom/google/c/e/q;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/google/c/e/q;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/google/c/e;->c:Lcom/google/c/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_0
    if-eqz p1, :cond_1

    .line 45
    sget-object v1, Lcom/google/c/e;->g:Lcom/google/c/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    .line 49
    sget-object v3, Lcom/google/c/a;->h:Lcom/google/c/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/c/a;->o:Lcom/google/c/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/c/a;->g:Lcom/google/c/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/c/a;->p:Lcom/google/c/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    :cond_2
    new-instance v3, Lcom/google/c/e/p;

    invoke-direct {v3, p1}, Lcom/google/c/e/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_3
    sget-object v3, Lcom/google/c/a;->c:Lcom/google/c/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    new-instance v3, Lcom/google/c/e/e;

    invoke-direct {v3, v1}, Lcom/google/c/e/e;-><init>(Z)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_4
    sget-object v1, Lcom/google/c/a;->d:Lcom/google/c/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    new-instance v1, Lcom/google/c/e/g;

    invoke-direct {v1}, Lcom/google/c/e/g;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_5
    sget-object v1, Lcom/google/c/a;->e:Lcom/google/c/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 62
    new-instance v1, Lcom/google/c/e/c;

    invoke-direct {v1}, Lcom/google/c/e/c;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_6
    sget-object v1, Lcom/google/c/a;->i:Lcom/google/c/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    new-instance v1, Lcom/google/c/e/m;

    invoke-direct {v1}, Lcom/google/c/e/m;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_7
    sget-object v1, Lcom/google/c/a;->b:Lcom/google/c/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 68
    new-instance v1, Lcom/google/c/e/a;

    invoke-direct {v1}, Lcom/google/c/e/a;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_8
    sget-object v1, Lcom/google/c/a;->m:Lcom/google/c/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 71
    new-instance v1, Lcom/google/c/e/a/e;

    invoke-direct {v1}, Lcom/google/c/e/a/e;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_9
    sget-object v1, Lcom/google/c/a;->n:Lcom/google/c/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 74
    new-instance v0, Lcom/google/c/e/a/a/d;

    invoke-direct {v0}, Lcom/google/c/e/a/a/d;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_a
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 78
    new-instance v0, Lcom/google/c/e/p;

    invoke-direct {v0, p1}, Lcom/google/c/e/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance p1, Lcom/google/c/e/e;

    invoke-direct {p1}, Lcom/google/c/e/e;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance p1, Lcom/google/c/e/a;

    invoke-direct {p1}, Lcom/google/c/e/a;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p1, Lcom/google/c/e/g;

    invoke-direct {p1}, Lcom/google/c/e/g;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p1, Lcom/google/c/e/c;

    invoke-direct {p1}, Lcom/google/c/e/c;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p1, Lcom/google/c/e/m;

    invoke-direct {p1}, Lcom/google/c/e/m;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p1, Lcom/google/c/e/a/e;

    invoke-direct {p1}, Lcom/google/c/e/a/e;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Lcom/google/c/e/a/a/d;

    invoke-direct {p1}, Lcom/google/c/e/a/a/d;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_b
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/c/e/q;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/c/e/q;

    iput-object p1, p0, Lcom/google/c/e/o;->a:[Lcom/google/c/e/q;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;
    .locals 4
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

    .line 94
    iget-object v0, p0, Lcom/google/c/e/o;->a:[Lcom/google/c/e/q;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 96
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/c/e/q;->a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/c/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/google/c/e/o;->a:[Lcom/google/c/e/q;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 108
    invoke-interface {v3}, Lcom/google/c/m;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
