.class public final Lcom/coloros/anim/e/k;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/coloros/anim/e/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/e/af<",
        "Lcom/coloros/anim/c/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/coloros/anim/e/k;->a:I

    return-void
.end method

.method private a(Lcom/coloros/anim/c/b/c;Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c/b/c;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 107
    iget v3, v1, Lcom/coloros/anim/e/k;->a:I

    mul-int/lit8 v3, v3, 0x4

    .line 108
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 113
    new-array v5, v4, [D

    .line 114
    new-array v4, v4, [D

    const/4 v6, 0x0

    move v7, v6

    .line 116
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 117
    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_1

    .line 118
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    aput-wide v8, v5, v7

    goto :goto_1

    .line 120
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    aput-wide v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/coloros/anim/c/b/c;->b:[I

    array-length v2, v2

    if-ge v6, v2, :cond_5

    .line 2021
    iget-object v2, v0, Lcom/coloros/anim/c/b/c;->b:[I

    .line 126
    aget v2, v2, v6

    .line 3017
    iget-object v3, v0, Lcom/coloros/anim/c/b/c;->a:[F

    .line 128
    aget v3, v3, v6

    float-to-double v7, v3

    const/4 v3, 0x1

    move v9, v3

    .line 3139
    :goto_3
    array-length v10, v5

    const-wide v11, 0x406fe00000000000L    # 255.0

    if-ge v9, v10, :cond_4

    add-int/lit8 v10, v9, -0x1

    .line 3140
    aget-wide v13, v5, v10

    .line 3141
    aget-wide v15, v5, v9

    .line 3142
    aget-wide v17, v5, v9

    cmpl-double v17, v17, v7

    if-ltz v17, :cond_3

    sub-double/2addr v7, v13

    sub-double/2addr v15, v13

    div-double v21, v7, v15

    .line 3144
    aget-wide v17, v4, v10

    aget-wide v19, v4, v9

    invoke-static/range {v17 .. v22}, Lcom/coloros/anim/f/f;->a(DDD)D

    move-result-wide v7

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3147
    :cond_4
    array-length v7, v4

    sub-int/2addr v7, v3

    aget-wide v7, v4, v7

    :goto_4
    mul-double/2addr v7, v11

    double-to-int v3, v7

    .line 129
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 130
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 131
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 127
    invoke-static {v3, v7, v8, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 4021
    iget-object v3, v0, Lcom/coloros/anim/c/b/c;->b:[I

    .line 133
    aput v2, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4049
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4052
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 4054
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 4056
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4057
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 4060
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 4062
    :cond_3
    iget p1, p0, Lcom/coloros/anim/e/k;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 4063
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/coloros/anim/e/k;->a:I

    .line 4066
    :cond_4
    iget p1, p0, Lcom/coloros/anim/e/k;->a:I

    new-array v0, p1, [F

    .line 4067
    new-array p1, p1, [I

    move v1, v3

    move v4, v1

    .line 4071
    :goto_2
    iget v5, p0, Lcom/coloros/anim/e/k;->a:I

    mul-int/lit8 v5, v5, 0x4

    if-ge v3, v5, :cond_9

    .line 4072
    div-int/lit8 v5, v3, 0x4

    .line 4073
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    .line 4074
    rem-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_8

    const-wide v9, 0x406fe00000000000L    # 255.0

    if-eq v8, v2, :cond_7

    const/4 v11, 0x2

    if-eq v8, v11, :cond_6

    const/4 v11, 0x3

    if-eq v8, v11, :cond_5

    goto :goto_3

    :cond_5
    mul-double/2addr v6, v9

    double-to-int v6, v6

    const/16 v7, 0xff

    .line 4087
    invoke-static {v7, v1, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, p1, v5

    goto :goto_3

    :cond_6
    mul-double/2addr v6, v9

    double-to-int v4, v6

    goto :goto_3

    :cond_7
    mul-double/2addr v6, v9

    double-to-int v1, v6

    goto :goto_3

    :cond_8
    double-to-float v6, v6

    .line 4077
    aput v6, v0, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4092
    :cond_9
    new-instance v1, Lcom/coloros/anim/c/b/c;

    invoke-direct {v1, v0, p1}, Lcom/coloros/anim/c/b/c;-><init>([F[I)V

    .line 4093
    invoke-direct {p0, v1, p2}, Lcom/coloros/anim/e/k;->a(Lcom/coloros/anim/c/b/c;Ljava/util/List;)V

    return-object v1
.end method
