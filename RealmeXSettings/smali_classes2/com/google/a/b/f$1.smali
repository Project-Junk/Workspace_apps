.class final Lcom/google/a/b/f$1;
.super Lcom/google/a/b/f$a;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/f;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/a/b/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/f$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/google/a/b/f$1;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/a/b/f$1;->b:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/a/b/f$a;-><init>(B)V

    return-void
.end method

.method private static synthetic a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    .line 925
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic b(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    .line 920
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$0dkIECIM2IRI0Td-ZjrftMXsuuU(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/a/b/f$1;->b(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$e8IfzRkQDaXH3OjtqXaJBBXoHn0(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/a/b/f$1;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lcom/google/a/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/g<",
            "TE;>;"
        }
    .end annotation

    .line 902
    new-instance v0, Lcom/google/a/b/f$1$1;

    invoke-direct {v0, p0}, Lcom/google/a/b/f$1$1;-><init>(Lcom/google/a/b/f$1;)V

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/google/a/b/f$1;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/f$1;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/google/a/b/f$1;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/a/b/f$1;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 899
    invoke-virtual {p0}, Lcom/google/a/b/f$1;->a()Lcom/google/a/b/g;

    move-result-object v0

    return-object v0
.end method

.method public final parallelStream()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/google/a/b/f$1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/f$1;->b:Ljava/util/Set;

    new-instance v2, Lcom/google/a/b/-$$Lambda$f$1$e8IfzRkQDaXH3OjtqXaJBBXoHn0;

    invoke-direct {v2, v1}, Lcom/google/a/b/-$$Lambda$f$1$e8IfzRkQDaXH3OjtqXaJBBXoHn0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 4

    .line 931
    iget-object v0, p0, Lcom/google/a/b/f$1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 932
    iget-object v3, p0, Lcom/google/a/b/f$1;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/google/a/b/f$1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/f$1;->b:Ljava/util/Set;

    new-instance v2, Lcom/google/a/b/-$$Lambda$f$1$0dkIECIM2IRI0Td-ZjrftMXsuuU;

    invoke-direct {v2, v1}, Lcom/google/a/b/-$$Lambda$f$1$0dkIECIM2IRI0Td-ZjrftMXsuuU;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
