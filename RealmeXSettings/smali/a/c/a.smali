.class public final La/c/a;
.super Ljava/lang/Object;
.source "Closeable.kt"


# direct methods
.method public static final a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 53
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void

    .line 56
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "$this$addSuppressed"

    .line 58
    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    sget-object v0, La/b/b;->a:La/b/a;

    invoke-static {p1, p0}, La/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
