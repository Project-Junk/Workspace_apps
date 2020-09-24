.class public final Landroidx/core/util/LruCacheKt;
.super Ljava/lang/Object;
.source "LruCache.kt"


# direct methods
.method public static final lruCache(ILa/d/a/c;La/d/a/b;La/d/a/e;)Landroid/util/LruCache;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "La/d/a/c<",
            "-TK;-TV;",
            "Ljava/lang/Integer;",
            ">;",
            "La/d/a/b<",
            "-TK;+TV;>;",
            "La/d/a/e<",
            "-",
            "Ljava/lang/Boolean;",
            "-TK;-TV;-TV;",
            "La/g;",
            ">;)",
            "Landroid/util/LruCache<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "sizeOf"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "create"

    invoke-static {p2, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEntryRemoved"

    invoke-static {p3, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroidx/core/util/LruCacheKt$lruCache$4;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p0

    move v6, p0

    invoke-direct/range {v1 .. v6}, Landroidx/core/util/LruCacheKt$lruCache$4;-><init>(La/d/a/c;La/d/a/b;La/d/a/e;II)V

    check-cast v0, Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic lruCache$default(ILa/d/a/c;La/d/a/b;La/d/a/e;ILjava/lang/Object;)Landroid/util/LruCache;
    .locals 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 40
    sget-object p1, Landroidx/core/util/LruCacheKt$lruCache$1;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$1;

    check-cast p1, La/d/a/c;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_1

    .line 42
    sget-object p1, Landroidx/core/util/LruCacheKt$lruCache$2;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$2;

    move-object p2, p1

    check-cast p2, La/d/a/b;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_2

    .line 44
    sget-object p1, Landroidx/core/util/LruCacheKt$lruCache$3;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$3;

    move-object p3, p1

    check-cast p3, La/d/a/e;

    :cond_2
    move-object v3, p3

    const-string p1, "sizeOf"

    invoke-static {v1, p1}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "create"

    invoke-static {v2, p1}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onEntryRemoved"

    invoke-static {v3, p1}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p1, Landroidx/core/util/LruCacheKt$lruCache$4;

    move-object v0, p1

    move v4, p0

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroidx/core/util/LruCacheKt$lruCache$4;-><init>(La/d/a/c;La/d/a/b;La/d/a/e;II)V

    check-cast p1, Landroid/util/LruCache;

    return-object p1
.end method
