.class public final Landroidx/core/os/TraceKt;
.super Ljava/lang/Object;
.source "Trace.kt"


# direct methods
.method public static final trace(Ljava/lang/String;La/d/a/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "La/d/a/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "sectionName"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 28
    :try_start_0
    invoke-interface {p1}, La/d/a/a;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw p0
.end method
