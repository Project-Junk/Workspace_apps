.class public final Lcom/google/c/a/c;
.super Ljava/lang/Object;
.source "AztecWriter.java"

# interfaces
.implements Lcom/google/c/s;


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    .line 31
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/c;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/c/a/c/a;II)Lcom/google/c/b/b;
    .locals 9

    .line 1082
    iget-object p0, p0, Lcom/google/c/a/c/a;->e:Lcom/google/c/b/b;

    if-eqz p0, :cond_3

    .line 1259
    iget v0, p0, Lcom/google/c/b/b;->a:I

    .line 1266
    iget v1, p0, Lcom/google/c/b/b;->b:I

    .line 69
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 70
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 72
    div-int v2, p1, v0

    div-int v3, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v0, v2

    sub-int v3, p1, v3

    .line 73
    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, v2

    sub-int v4, p2, v4

    .line 74
    div-int/lit8 v4, v4, 0x2

    .line 76
    new-instance v5, Lcom/google/c/b/b;

    invoke-direct {v5, p1, p2}, Lcom/google/c/b/b;-><init>(II)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, v1, :cond_2

    move v6, p1

    move v7, v3

    :goto_1
    if-ge v6, v0, :cond_1

    .line 81
    invoke-virtual {p0, v6, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 82
    invoke-virtual {v5, v7, v4, v2, v2}, Lcom/google/c/b/b;->a(IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v2

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, v2

    goto :goto_0

    :cond_2
    return-object v5

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/c/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/c/g;",
            "*>;)",
            "Lcom/google/c/b/b;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lcom/google/c/g;->b:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    if-nez p5, :cond_1

    move-object v2, v0

    goto :goto_1

    .line 41
    :cond_1
    sget-object v2, Lcom/google/c/g;->a:Lcom/google/c/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    :goto_1
    if-nez p5, :cond_2

    goto :goto_2

    .line 42
    :cond_2
    sget-object v0, Lcom/google/c/g;->j:Lcom/google/c/g;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Ljava/lang/Integer;

    :goto_2
    if-nez v1, :cond_3

    .line 43
    sget-object p5, Lcom/google/c/a/c;->a:Ljava/nio/charset/Charset;

    goto :goto_3

    :cond_3
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    :goto_3
    if-nez v2, :cond_4

    const/16 v1, 0x21

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_4
    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1055
    :goto_5
    sget-object v2, Lcom/google/c/a;->a:Lcom/google/c/a;

    if-ne p2, v2, :cond_6

    .line 1058
    invoke-virtual {p1, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/google/c/a/c/c;->a([BII)Lcom/google/c/a/c/a;

    move-result-object p1

    .line 1059
    invoke-static {p1, p3, p4}, Lcom/google/c/a/c;->a(Lcom/google/c/a/c/a;II)Lcom/google/c/b/b;

    move-result-object p1

    return-object p1

    .line 1056
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode AZTEC, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
