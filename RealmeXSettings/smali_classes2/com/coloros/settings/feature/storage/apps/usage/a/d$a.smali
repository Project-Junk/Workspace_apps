.class final Lcom/coloros/settings/feature/storage/apps/usage/a/d$a;
.super Ljava/lang/Object;
.source "DatabaseUpdater.java"

# interfaces
.implements Lcom/google/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/b/j<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/a/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/b/k;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/o;
        }
    .end annotation

    .line 1187
    invoke-virtual {p1}, Lcom/google/b/k;->i()Lcom/google/b/i;

    move-result-object p1

    .line 1188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1189
    invoke-virtual {p1}, Lcom/google/b/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/k;

    .line 1190
    invoke-virtual {v1}, Lcom/google/b/k;->h()Lcom/google/b/n;

    move-result-object v1

    .line 2136
    iget-object v1, v1, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    invoke-virtual {v1}, Lcom/google/b/b/h;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1192
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/b/k;

    invoke-virtual {v2}, Lcom/google/b/k;->i()Lcom/google/b/i;

    move-result-object v2

    .line 1195
    invoke-virtual {v2}, Lcom/google/b/i;->a()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1197
    invoke-virtual {v2}, Lcom/google/b/i;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/b/k;

    .line 1198
    invoke-virtual {v6}, Lcom/google/b/k;->j()Lcom/google/b/q;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/b/q;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1201
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method
