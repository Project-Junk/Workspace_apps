.class public Landroidx/a/a/b/a;
.super Landroidx/a/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/a/a/b/b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/a/a/b/b;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/a/a/b/a;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroidx/a/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/a/a/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/a/a/b/b$c;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/a/a/b/a;->a(Ljava/lang/Object;)Landroidx/a/a/b/b$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/a/a/b/b$c;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/a/a/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Landroidx/a/a/b/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/a/a/b/b$c;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/a/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Landroidx/a/a/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroidx/a/a/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/a/a/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/a/a/b/b$c;

    iget-object p0, p0, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method