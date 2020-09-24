.class public interface abstract Lcom/google/a/b/d;
.super Ljava/lang/Object;
.source "Multiset.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private static synthetic a(Ljava/util/function/Consumer;Lcom/google/a/b/d$a;)V
    .locals 2

    .line 463
    invoke-interface {p1}, Lcom/google/a/b/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 464
    invoke-interface {p1}, Lcom/google/a/b/d$a;->b()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 466
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$TKHqjddSJ39myy4ifT9CfMDG2JY(Ljava/util/function/Consumer;Lcom/google/a/b/d$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/a/b/d;->a(Ljava/util/function/Consumer;Lcom/google/a/b/d$a;)V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/a/b/d$a<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 459
    invoke-static {p1}, Lcom/google/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-interface {p0}, Lcom/google/a/b/d;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/a/b/-$$Lambda$d$TKHqjddSJ39myy4ifT9CfMDG2JY;

    invoke-direct {v1, p1}, Lcom/google/a/b/-$$Lambda$d$TKHqjddSJ39myy4ifT9CfMDG2JY;-><init>(Ljava/util/function/Consumer;)V

    .line 461
    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract size()I
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 473
    invoke-static {p0}, Lcom/google/a/b/e;->a(Lcom/google/a/b/d;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
