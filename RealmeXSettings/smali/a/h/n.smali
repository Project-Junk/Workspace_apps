.class public La/h/n;
.super La/h/m;
.source "Strings.kt"


# direct methods
.method public static final a(Ljava/lang/CharSequence;)I
    .locals 1

    const-string v0, "$this$lastIndex"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final a(Ljava/lang/CharSequence;I)I
    .locals 7

    const-string v0, "$this$indexOf"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    instance-of v0, p0, Ljava/lang/String;

    const/16 v1, 0x2e

    if-nez v0, :cond_6

    const/4 v2, 0x1

    .line 990
    new-array v3, v2, [C

    const/4 v4, 0x0

    aput-char v1, v3, v4

    const-string v1, "$this$indexOfAny"

    invoke-static {p0, v1}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "chars"

    invoke-static {v3, v1}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "$this$single"

    .line 2836
    invoke-static {v3, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4380
    aget-char v0, v3, v4

    .line 2837
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_0
    if-gez p1, :cond_1

    move p1, v4

    .line 2840
    :cond_1
    invoke-static {p0}, La/h/e;->a(Ljava/lang/CharSequence;)I

    move-result v0

    if-gt p1, v0, :cond_5

    .line 2841
    :goto_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v5, v4

    :goto_1
    if-gtz v5, :cond_3

    .line 3421
    aget-char v6, v3, v5

    .line 2842
    invoke-static {v6, v1}, La/h/a;->a(CC)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_2
    if-eqz v1, :cond_4

    return p1

    :cond_4
    if-eq p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, -0x1

    return p0

    .line 992
    :cond_6
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;II)I
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 988
    :cond_0
    invoke-static {p0, p1}, La/h/e;->a(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method
