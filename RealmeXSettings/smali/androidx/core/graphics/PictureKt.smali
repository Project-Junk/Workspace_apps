.class public final Landroidx/core/graphics/PictureKt;
.super Ljava/lang/Object;
.source "Picture.kt"


# direct methods
.method public static final record(Landroid/graphics/Picture;IILa/d/a/b;)Landroid/graphics/Picture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Picture;",
            "II",
            "La/d/a/b<",
            "-",
            "Landroid/graphics/Canvas;",
            "La/g;",
            ">;)",
            "Landroid/graphics/Picture;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p1

    :try_start_0
    const-string p2, "c"

    .line 38
    invoke-static {p1, p2}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    throw p1
.end method
