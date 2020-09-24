.class public abstract Lcom/color/eyeprotect/util/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/util/g$a;,
        Lcom/color/eyeprotect/util/g$b;,
        Lcom/color/eyeprotect/util/g$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([F[F)Lcom/color/eyeprotect/util/g;
    .locals 1

    new-instance v0, Lcom/color/eyeprotect/util/g$c;

    invoke-direct {v0, p0, p1}, Lcom/color/eyeprotect/util/g$c;-><init>([F[F)V

    return-object v0
.end method

.method public static a([F[FLjava/lang/String;)Lcom/color/eyeprotect/util/g;
    .locals 1

    invoke-static {p0}, Lcom/color/eyeprotect/util/g;->a([F)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    const-string v0, "cubic_spline_method"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/color/eyeprotect/util/g;->c([F[F)Lcom/color/eyeprotect/util/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/color/eyeprotect/util/g;->b([F)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/util/g;->a([F[F)Lcom/color/eyeprotect/util/g;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lcom/color/eyeprotect/util/g;->b([F[F)Lcom/color/eyeprotect/util/g;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The control points must all have strictly increasing X values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a([F)Z
    .locals 5

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    aget v4, p0, v1

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There must be at least two control points."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([F[F)Lcom/color/eyeprotect/util/g;
    .locals 1

    new-instance v0, Lcom/color/eyeprotect/util/g$b;

    invoke-direct {v0, p0, p1}, Lcom/color/eyeprotect/util/g$b;-><init>([F[F)V

    return-object v0
.end method

.method private static b([F)Z
    .locals 5

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    aget v4, p0, v1

    cmpg-float v3, v4, v3

    if-gez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There must be at least two control points."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([F[F)Lcom/color/eyeprotect/util/g;
    .locals 1

    new-instance v0, Lcom/color/eyeprotect/util/g$a;

    invoke-direct {v0, p0, p1}, Lcom/color/eyeprotect/util/g$a;-><init>([F[F)V

    return-object v0
.end method


# virtual methods
.method public abstract a(F)F
.end method
