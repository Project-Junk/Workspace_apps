.class public final Landroidx/core/graphics/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# direct methods
.method public static final component1(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 228
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result p0

    return p0
.end method

.method public static final component1(Landroid/graphics/Color;)F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroid/graphics/Color;->getComponent(I)F

    move-result p0

    return p0
.end method

.method public static final component1(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final component2(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 242
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result p0

    return p0
.end method

.method public static final component2(Landroid/graphics/Color;)F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Landroid/graphics/Color;->getComponent(I)F

    move-result p0

    return p0
.end method

.method public static final component2(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final component3(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 256
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result p0

    return p0
.end method

.method public static final component3(Landroid/graphics/Color;)F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p0, v0}, Landroid/graphics/Color;->getComponent(I)F

    move-result p0

    return p0
.end method

.method public static final component3(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final component4(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 270
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result p0

    return p0
.end method

.method public static final component4(Landroid/graphics/Color;)F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 81
    invoke-virtual {p0, v0}, Landroid/graphics/Color;->getComponent(I)F

    move-result p0

    return p0
.end method

.method public static final component4(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final getAlpha(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 279
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result p0

    return p0
.end method

.method public static final getAlpha(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final getBlue(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 306
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result p0

    return p0
.end method

.method public static final getBlue(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final getColorSpace(J)Landroid/graphics/ColorSpace;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 345
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object p0

    const-string p1, "Color.colorSpace(this)"

    invoke-static {p0, p1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getGreen(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 297
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result p0

    return p0
.end method

.method public static final getGreen(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final getLuminance(I)F
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 199
    invoke-static {p0}, Landroid/graphics/Color;->luminance(I)F

    move-result p0

    return p0
.end method

.method public static final getLuminance(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 313
    invoke-static {p0, p1}, Landroid/graphics/Color;->luminance(J)F

    move-result p0

    return p0
.end method

.method public static final getRed(J)F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 288
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result p0

    return p0
.end method

.method public static final getRed(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final isSrgb(J)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 333
    invoke-static {p0, p1}, Landroid/graphics/Color;->isSrgb(J)Z

    move-result p0

    return p0
.end method

.method public static final isWideGamut(J)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 339
    invoke-static {p0, p1}, Landroid/graphics/Color;->isWideGamut(J)Z

    move-result p0

    return p0
.end method

.method public static final plus(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;

    move-result-object p0

    const-string p1, "ColorUtils.compositeColors(c, this)"

    invoke-static {p0, p1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toColor(I)Landroid/graphics/Color;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 206
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    const-string v0, "Color.valueOf(this)"

    invoke-static {p0, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toColor(J)Landroid/graphics/Color;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 319
    invoke-static {p0, p1}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object p0

    const-string p1, "Color.valueOf(this)"

    invoke-static {p0, p1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toColorInt(J)I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 326
    invoke-static {p0, p1}, Landroid/graphics/Color;->toArgb(J)I

    move-result p0

    return p0
.end method

.method public static final toColorInt(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final toColorLong(I)J
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 214
    invoke-static {p0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    return-wide v0
.end method
