.class public final Lcom/google/c/j;
.super Ljava/lang/Object;
.source "MultiFormatReader.java"

# interfaces
.implements Lcom/google/c/m;


# instance fields
.field public a:[Lcom/google/c/m;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/c;)Lcom/google/c/o;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/c/j;->a:[Lcom/google/c/m;

    if-eqz v0, :cond_0

    .line 169
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 171
    :try_start_0
    iget-object v4, p0, Lcom/google/c/j;->b:Ljava/util/Map;

    invoke-interface {v3, p1, v4}, Lcom/google/c/m;->a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/c/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;
    .locals 0
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
            Lcom/google/c/l;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p2}, Lcom/google/c/j;->a(Ljava/util/Map;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/c/j;->a(Lcom/google/c/c;)Lcom/google/c/o;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/google/c/j;->a:[Lcom/google/c/m;

    if-eqz v0, :cond_0

    .line 161
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 162
    invoke-interface {v3}, Lcom/google/c/m;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/google/c/j;->b:Ljava/util/Map;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 98
    sget-object v2, Lcom/google/c/e;->d:Lcom/google/c/e;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 100
    :cond_1
    sget-object v3, Lcom/google/c/e;->c:Lcom/google/c/e;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 102
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_a

    .line 104
    sget-object v5, Lcom/google/c/a;->o:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->p:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->h:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->g:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->b:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->c:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->d:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->e:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->i:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->m:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/c/a;->n:Lcom/google/c/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 118
    new-instance v1, Lcom/google/c/e/o;

    invoke-direct {v1, p1}, Lcom/google/c/e/o;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4
    sget-object v1, Lcom/google/c/a;->l:Lcom/google/c/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    new-instance v1, Lcom/google/c/g/a;

    invoke-direct {v1}, Lcom/google/c/g/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_5
    sget-object v1, Lcom/google/c/a;->f:Lcom/google/c/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    new-instance v1, Lcom/google/c/c/a;

    invoke-direct {v1}, Lcom/google/c/c/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    sget-object v1, Lcom/google/c/a;->a:Lcom/google/c/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    new-instance v1, Lcom/google/c/a/b;

    invoke-direct {v1}, Lcom/google/c/a/b;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_7
    sget-object v1, Lcom/google/c/a;->k:Lcom/google/c/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    new-instance v1, Lcom/google/c/f/b;

    invoke-direct {v1}, Lcom/google/c/f/b;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_8
    sget-object v1, Lcom/google/c/a;->j:Lcom/google/c/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 133
    new-instance v1, Lcom/google/c/d/a;

    invoke-direct {v1}, Lcom/google/c/d/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 137
    new-instance v0, Lcom/google/c/e/o;

    invoke-direct {v0, p1}, Lcom/google/c/e/o;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_a
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v2, :cond_b

    .line 142
    new-instance v0, Lcom/google/c/e/o;

    invoke-direct {v0, p1}, Lcom/google/c/e/o;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_b
    new-instance v0, Lcom/google/c/g/a;

    invoke-direct {v0}, Lcom/google/c/g/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/google/c/c/a;

    invoke-direct {v0}, Lcom/google/c/c/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/google/c/a/b;

    invoke-direct {v0}, Lcom/google/c/a/b;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/google/c/f/b;

    invoke-direct {v0}, Lcom/google/c/f/b;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/google/c/d/a;

    invoke-direct {v0}, Lcom/google/c/d/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_c

    .line 152
    new-instance v0, Lcom/google/c/e/o;

    invoke-direct {v0, p1}, Lcom/google/c/e/o;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_c
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/c/m;

    invoke-interface {v4, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/c/m;

    iput-object p1, p0, Lcom/google/c/j;->a:[Lcom/google/c/m;

    return-void
.end method
