.class public final Lcom/google/c/e/d;
.super Lcom/google/c/e/r;
.source "Code128Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/c/e/r;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;II)Z
    .locals 4

    add-int/2addr p2, p1

    .line 190
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-ge p1, p2, :cond_3

    if-ge p1, v0, :cond_3

    .line 192
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0xf1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-gt p2, v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
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

    .line 58
    sget-object v0, Lcom/google/c/a;->e:Lcom/google/c/a;

    if-ne p2, v0, :cond_0

    .line 61
    invoke-super/range {p0 .. p5}, Lcom/google/c/e/r;->a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode CODE_128, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)[Z
    .locals 12

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/16 v1, 0x50

    if-gt v0, v1, :cond_e

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_2

    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_0

    const/16 v3, 0x7e

    if-le v4, v3, :cond_1

    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bad character in input: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    move v5, v1

    move v6, v5

    move v7, v6

    move v8, v4

    :cond_3
    :goto_1
    if-ge v5, v0, :cond_a

    const/16 v9, 0x63

    if-ne v7, v9, :cond_4

    const/4 v10, 0x2

    goto :goto_2

    :cond_4
    const/4 v10, 0x4

    .line 98
    :goto_2
    invoke-static {p1, v5, v10}, Lcom/google/c/e/d;->a(Ljava/lang/CharSequence;II)Z

    move-result v10

    const/16 v11, 0x64

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move v9, v11

    :goto_3
    if-ne v9, v7, :cond_7

    if-ne v7, v11, :cond_6

    .line 109
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v11, v9, -0x20

    :goto_4
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 112
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    packed-switch v9, :pswitch_data_1

    add-int/lit8 v9, v5, 0x2

    .line 130
    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v5, v9

    goto :goto_7

    :pswitch_2
    const/16 v11, 0x60

    goto :goto_4

    :pswitch_3
    const/16 v11, 0x61

    goto :goto_4

    :pswitch_4
    const/16 v11, 0x66

    goto :goto_4

    :cond_7
    if-nez v7, :cond_9

    if-ne v9, v11, :cond_8

    const/16 v7, 0x68

    goto :goto_5

    :cond_8
    const/16 v7, 0x69

    :goto_5
    move v11, v7

    goto :goto_6

    :cond_9
    move v11, v9

    :goto_6
    move v7, v9

    .line 154
    :goto_7
    sget-object v9, Lcom/google/c/e/c;->a:[[I

    aget-object v9, v9, v11

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int/2addr v11, v8

    add-int/2addr v6, v11

    if-eqz v5, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 164
    :cond_a
    rem-int/lit8 v6, v6, 0x67

    .line 165
    sget-object p1, Lcom/google/c/e/c;->a:[[I

    aget-object p1, p1, v6

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object p1, Lcom/google/c/e/c;->a:[[I

    const/16 v0, 0x6a

    aget-object p1, p1, v0

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 173
    array-length v5, v3

    move v6, v0

    move v0, v1

    :goto_9
    if-ge v0, v5, :cond_b

    aget v7, v3, v0

    add-int/2addr v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_b
    move v0, v6

    goto :goto_8

    .line 179
    :cond_c
    new-array p1, v0, [Z

    .line 181
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 182
    invoke-static {p1, v1, v2, v4}, Lcom/google/c/e/d;->a([ZI[IZ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_a

    :cond_d
    return-object p1

    .line 69
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
