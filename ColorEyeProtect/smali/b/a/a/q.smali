.class public final Lb/a/a/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lb/a/a/r;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile a:I

.field private b:[Lb/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(II)V
    .locals 2

    iget-object p0, p0, Lb/a/a/q;->b:[Lb/a/a/r;

    if-nez p0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    aget-object v0, p0, p2

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    aget-object v1, p0, p1

    if-nez v1, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    aput-object v0, p0, p1

    aput-object v1, p0, p2

    invoke-interface {v0, p1}, Lb/a/a/r;->a(I)V

    invoke-interface {v1, p2}, Lb/a/a/r;->a(I)V

    return-void
.end method

.method private final b(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/q;->b:[Lb/a/a/r;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    if-nez v2, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1, v1}, Lb/a/a/q;->a(II)V

    move p1, v1

    goto :goto_0
.end method

.method private final c(I)V
    .locals 5

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lb/a/a/q;->a:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lb/a/a/q;->b:[Lb/a/a/r;

    if-nez v1, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lb/a/a/q;->a:I

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v1, v0

    if-nez v4, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    move v0, v2

    :cond_4
    aget-object v2, v1, p1

    if-nez v2, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    check-cast v2, Ljava/lang/Comparable;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    invoke-static {}, La/d/b/g;->a()V

    :cond_6
    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, v0}, Lb/a/a/q;->a(II)V

    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lb/a/a/r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lb/a/a/q;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v0, p0, Lb/a/a/q;->b:[Lb/a/a/r;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    iget v3, p0, Lb/a/a/q;->a:I

    const/4 v4, -0x1

    add-int/2addr v3, v4

    iput v3, p0, Lb/a/a/q;->a:I

    iget v3, p0, Lb/a/a/q;->a:I

    if-ge p1, v3, :cond_5

    iget v3, p0, Lb/a/a/q;->a:I

    invoke-direct {p0, p1, v3}, Lb/a/a/q;->a(II)V

    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v3, v3, 0x2

    if-lez p1, :cond_4

    aget-object v5, v0, p1

    if-nez v5, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v0, v3

    if-nez v6, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    invoke-direct {p0, p1, v3}, Lb/a/a/q;->a(II)V

    invoke-direct {p0, v3}, Lb/a/a/q;->b(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lb/a/a/q;->c(I)V

    :cond_5
    :goto_1
    iget p1, p0, Lb/a/a/q;->a:I

    aget-object p1, v0, p1

    if-nez p1, :cond_6

    invoke-static {}, La/d/b/g;->a()V

    :cond_6
    invoke-interface {p1}, Lb/a/a/r;->b()Lb/a/a/q;

    move-result-object v3

    move-object v5, p0

    check-cast v5, Lb/a/a/q;

    if-ne v3, v5, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lb/a/a/q;

    invoke-interface {p1, v2}, Lb/a/a/r;->a(Lb/a/a/q;)V

    invoke-interface {p1, v4}, Lb/a/a/r;->a(I)V

    iget p0, p0, Lb/a/a/q;->a:I

    check-cast v1, Lb/a/a/r;

    aput-object v1, v0, p0

    return-object p1

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public final a()Z
    .locals 0

    iget p0, p0, Lb/a/a/q;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized a(Lb/a/a/r;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "node"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lb/a/a/r;->b()Lb/a/a/q;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lb/a/a/r;->c()I

    move-result p1

    if-ltz p1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lb/a/a/q;->a(I)Lb/a/a/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lb/a/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/a/a/q;->c()Lb/a/a/r;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lb/a/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lb/a/a/q;->b:[Lb/a/a/r;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
