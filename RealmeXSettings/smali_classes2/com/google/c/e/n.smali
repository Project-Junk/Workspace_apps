.class public final Lcom/google/c/e/n;
.super Lcom/google/c/e/r;
.source "ITFWriter.java"


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/c/e/n;->a:[I

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/c/e/n;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/c/e/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/t;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/c/a;->i:Lcom/google/c/a;

    if-ne p2, v0, :cond_0

    .line 46
    invoke-super/range {p0 .. p5}, Lcom/google/c/e/r;->a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode ITF, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)[Z
    .locals 12

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 52
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    const/16 v1, 0x50

    if-gt v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x9

    add-int/lit8 v1, v1, 0x9

    .line 59
    new-array v1, v1, [Z

    .line 60
    sget-object v2, Lcom/google/c/e/n;->a:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/google/c/e/n;->a([ZI[IZ)I

    move-result v2

    move v5, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/lit8 v8, v2, 0x1

    .line 63
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    const/16 v8, 0x12

    .line 64
    new-array v8, v8, [I

    move v9, v3

    :goto_1
    const/4 v10, 0x5

    if-ge v9, v10, :cond_0

    shl-int/lit8 v10, v9, 0x1

    .line 66
    sget-object v11, Lcom/google/c/e/m;->a:[[I

    aget-object v11, v11, v6

    aget v11, v11, v9

    aput v11, v8, v10

    add-int/2addr v10, v4

    .line 67
    sget-object v11, Lcom/google/c/e/m;->a:[[I

    aget-object v11, v11, v7

    aget v11, v11, v9

    aput v11, v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 69
    :cond_0
    invoke-static {v1, v5, v8, v4}, Lcom/google/c/e/n;->a([ZI[IZ)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 71
    :cond_1
    sget-object p1, Lcom/google/c/e/n;->b:[I

    invoke-static {v1, v5, p1, v4}, Lcom/google/c/e/n;->a([ZI[IZ)I

    return-object v1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The lenght of the input should be even"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
