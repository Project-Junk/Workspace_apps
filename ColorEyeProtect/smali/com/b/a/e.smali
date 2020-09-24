.class public final Lcom/b/a/e;
.super Lcom/b/a/b;


# instance fields
.field private final a:Lcom/b/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/d<",
            "Ljava/lang/String;",
            "Lcom/b/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/b;-><init>()V

    new-instance v0, Lcom/b/a/a/d;

    invoke-direct {v0}, Lcom/b/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/b/a/e;->a:Lcom/b/a/a/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/b/a/b;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/b/a/e;->a:Lcom/b/a/a/d;

    invoke-virtual {p0}, Lcom/b/a/a/d;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/b/a/b;)V
    .locals 0

    if-nez p2, :cond_0

    sget-object p2, Lcom/b/a/d;->a:Lcom/b/a/d;

    :cond_0
    iget-object p0, p0, Lcom/b/a/e;->a:Lcom/b/a/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/b/a/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/b/a/e;

    iget-object p1, p1, Lcom/b/a/e;->a:Lcom/b/a/a/d;

    iget-object p0, p0, Lcom/b/a/e;->a:Lcom/b/a/a/d;

    invoke-virtual {p1, p0}, Lcom/b/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/b/a/e;->a:Lcom/b/a/a/d;

    invoke-virtual {p0}, Lcom/b/a/a/d;->hashCode()I

    move-result p0

    return p0
.end method
