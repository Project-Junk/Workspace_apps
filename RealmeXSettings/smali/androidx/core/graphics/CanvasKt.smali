.class public final Landroidx/core/graphics/CanvasKt;
.super Ljava/lang/Object;
.source "Canvas.kt"


# direct methods
.method public static final withMatrix(Landroid/graphics/Canvas;Landroid/graphics/Matrix;La/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "La/d/a/b<",
            "-",
            "Landroid/graphics/Canvas;",
            "La/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 119
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 121
    :try_start_0
    invoke-interface {p2, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static synthetic withMatrix$default(Landroid/graphics/Canvas;Landroid/graphics/Matrix;La/d/a/b;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 115
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    const-string p3, "$receiver"

    invoke-static {p0, p3}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "matrix"

    invoke-static {p1, p3}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "block"

    invoke-static {p2, p3}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p3

    .line 169
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 171
    :try_start_0
    invoke-interface {p2, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p0, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static final withRotation(Landroid/graphics/Canvas;FFFLa/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFF",
            "La/d/a/b<",
            "-",
            "Landroid/graphics/Canvas;",
            "La/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 66
    :try_start_0
    invoke-interface {p4, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static synthetic withRotation$default(Landroid/graphics/Canvas;FFFLa/d/a/b;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move p3, v0

    :cond_2
    const-string p5, "$receiver"

    .line 60
    invoke-static {p0, p5}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "block"

    invoke-static {p4, p5}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p5

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 138
    :try_start_0
    invoke-interface {p4, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p0, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static final withSave(Landroid/graphics/Canvas;La/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "La/d/a/b<",
            "-",
            "Landroid/graphics/Canvas;",
            "La/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 29
    :try_start_0
    invoke-interface {p1, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static final withScale(Landroid/graphics/Canvas;FFFFLa/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFFF",
            "La/d/a/b<",
            "-",
            "Landroid/graphics/Canvas;",
            "La/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 84
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 86
    :try_start_0
    invoke-interface {p5, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static synthetic withScale$default(Landroid/graphics/Canvas;FFFFLa/d/a/b;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    move p4, v0

    :cond_3
    const-string p6, "$receiver"

    .line 80
    invoke-static {p0, p6}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "block"

    invoke-static {p5, p6}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p6

    .line 144
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 146
    :try_start_0
    invoke-interface {p5, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static final withSkew(Landroid/graphics/Canvas;FFLa/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "La/d/a/b<",
            "-",
            "Landroid/graphics/Canvas;",
            "La/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 104
    :try_start_0
    invoke-interface {p3, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static synthetic withSkew$default(Landroid/graphics/Canvas;FFLa/d/a/b;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move p2, v0

    :cond_1
    const-string p4, "$receiver"

    .line 98
    invoke-static {p0, p4}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "block"

    invoke-static {p3, p4}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p4

    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 154
    :try_start_0
    invoke-interface {p3, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static final withTranslation(Landroid/graphics/Canvas;FFLa/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "La/d/a/b<",
            "-",
            "Landroid/graphics/Canvas;",
            "La/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    :try_start_0
    invoke-interface {p3, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public static synthetic withTranslation$default(Landroid/graphics/Canvas;FFLa/d/a/b;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move p2, v0

    :cond_1
    const-string p4, "$receiver"

    .line 41
    invoke-static {p0, p4}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "block"

    invoke-static {p3, p4}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p4

    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    :try_start_0
    invoke-interface {p3, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p0, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method
