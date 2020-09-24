.class public final Lcom/google/c/e/g;
.super Lcom/google/c/e/q;
.source "Code93Reader.java"


# static fields
.field private static final a:[C

.field private static final b:[I

.field private static final c:I


# instance fields
.field private final d:Ljava/lang/StringBuilder;

.field private final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/c/e/g;->a:[C

    const/16 v0, 0x30

    .line 47
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 55
    sput-object v0, Lcom/google/c/e/g;->b:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/c/e/g;->c:I

    return-void

    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/google/c/e/q;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/c/e/g;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    .line 62
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/c/e/g;->e:[I

    return-void
.end method

.method private static a([I)I
    .locals 8

    .line 161
    array-length v0, p0

    .line 163
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget v5, p0, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    :goto_1
    if-ge v1, v0, :cond_6

    .line 168
    aget v5, p0, v1

    shl-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x9

    div-int/2addr v5, v4

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x7f

    if-le v5, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    if-lez v6, :cond_5

    const/4 v5, 0x4

    if-le v6, v5, :cond_2

    goto :goto_4

    :cond_2
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_4

    move v5, v3

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_3

    shl-int/lit8 v5, v5, 0x1

    or-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    :cond_4
    shl-int/2addr v3, v6

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    const/4 p0, -0x1

    return p0

    :cond_6
    return v3
.end method

.method private static a(Ljava/lang/CharSequence;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/d;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 266
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sget-object p1, Lcom/google/c/e/g;->a:[C

    rem-int/lit8 v2, v2, 0x2f

    aget-char p1, p1, v2

    if-ne p0, p1, :cond_2

    return-void

    .line 272
    :cond_2
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/c/b/a;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/d;,
            Lcom/google/c/h;
        }
    .end annotation

    .line 2040
    iget p3, p2, Lcom/google/c/b/a;->b:I

    const/4 v0, 0x0

    .line 1128
    invoke-virtual {p2, v0}, Lcom/google/c/b/a;->c(I)I

    move-result v1

    .line 1130
    iget-object v2, p0, Lcom/google/c/e/g;->e:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1131
    iget-object v2, p0, Lcom/google/c/e/g;->e:[I

    .line 1134
    array-length v3, v2

    move v4, v0

    move v5, v4

    move v6, v1

    :goto_0
    if-ge v1, p3, :cond_13

    .line 1138
    invoke-virtual {p2, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v7

    xor-int/2addr v7, v4

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 1139
    aget v7, v2, v5

    add-int/2addr v7, v8

    aput v7, v2, v5

    goto/16 :goto_9

    :cond_0
    add-int/lit8 v7, v3, -0x1

    if-ne v5, v7, :cond_12

    .line 1142
    invoke-static {v2}, Lcom/google/c/e/g;->a([I)I

    move-result v9

    sget v10, Lcom/google/c/e/g;->c:I

    const/4 v11, 0x2

    if-ne v9, v10, :cond_11

    .line 1143
    new-array p3, v11, [I

    aput v6, p3, v0

    aput v1, p3, v8

    .line 71
    aget v1, p3, v8

    invoke-virtual {p2, v1}, Lcom/google/c/b/a;->c(I)I

    move-result v1

    .line 3040
    iget v2, p2, Lcom/google/c/b/a;->b:I

    .line 74
    iget-object v3, p0, Lcom/google/c/e/g;->e:[I

    .line 75
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 76
    iget-object v4, p0, Lcom/google/c/e/g;->d:Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :goto_1
    invoke-static {p2, v1, v3}, Lcom/google/c/e/g;->a(Lcom/google/c/b/a;I[I)V

    .line 83
    invoke-static {v3}, Lcom/google/c/e/g;->a([I)I

    move-result v5

    if-ltz v5, :cond_10

    move v6, v0

    .line 3188
    :goto_2
    sget-object v7, Lcom/google/c/e/g;->b:[I

    array-length v9, v7

    if-ge v6, v9, :cond_f

    .line 3189
    aget v7, v7, v6

    if-ne v7, v5, :cond_e

    .line 3190
    sget-object v5, Lcom/google/c/e/g;->a:[C

    aget-char v5, v5, v6

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    array-length v6, v3

    move v7, v0

    move v9, v1

    :goto_3
    if-ge v7, v6, :cond_1

    aget v10, v3, v7

    add-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 94
    :cond_1
    invoke-virtual {p2, v9}, Lcom/google/c/b/a;->c(I)I

    move-result v6

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_d

    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-eq v6, v2, :cond_c

    .line 99
    invoke-virtual {p2, v6}, Lcom/google/c/b/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lt p2, v11, :cond_b

    .line 3256
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/lit8 v2, p2, -0x2

    const/16 v3, 0x14

    .line 3257
    invoke-static {v4, v2, v3}, Lcom/google/c/e/g;->a(Ljava/lang/CharSequence;II)V

    sub-int/2addr p2, v8

    const/16 v2, 0xf

    .line 3258
    invoke-static {v4, p2, v2}, Lcom/google/c/e/g;->a(Ljava/lang/CharSequence;II)V

    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v11

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4197
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 4198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v0

    :goto_4
    if-ge v3, p2, :cond_a

    .line 4200
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0x61

    if-lt v5, v7, :cond_9

    const/16 v7, 0x64

    if-gt v5, v7, :cond_9

    add-int/lit8 v7, p2, -0x1

    if-ge v3, v7, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 4205
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v9, 0x5a

    const/16 v10, 0x41

    packed-switch v5, :pswitch_data_0

    move v5, v0

    goto :goto_6

    :pswitch_0
    if-lt v7, v10, :cond_2

    if-gt v7, v9, :cond_2

    add-int/lit8 v7, v7, 0x20

    goto :goto_5

    .line 4213
    :cond_2
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p1

    throw p1

    :pswitch_1
    if-lt v7, v10, :cond_3

    const/16 v5, 0x4f

    if-gt v7, v5, :cond_3

    add-int/lit8 v7, v7, -0x20

    goto :goto_5

    :cond_3
    if-ne v7, v9, :cond_4

    const/16 v5, 0x3a

    goto :goto_6

    .line 4241
    :cond_4
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p1

    throw p1

    :pswitch_2
    if-lt v7, v10, :cond_5

    const/16 v5, 0x45

    if-gt v7, v5, :cond_5

    add-int/lit8 v7, v7, -0x26

    goto :goto_5

    :cond_5
    const/16 v5, 0x46

    if-lt v7, v5, :cond_6

    const/16 v5, 0x57

    if-gt v7, v5, :cond_6

    add-int/lit8 v7, v7, -0xb

    goto :goto_5

    .line 4231
    :cond_6
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p1

    throw p1

    :pswitch_3
    if-lt v7, v10, :cond_7

    if-gt v7, v9, :cond_7

    add-int/lit8 v7, v7, -0x40

    :goto_5
    int-to-char v5, v7

    goto :goto_6

    .line 4221
    :cond_7
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p1

    throw p1

    .line 4245
    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4203
    :cond_8
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p1

    throw p1

    .line 4249
    :cond_9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    add-int/2addr v3, v8

    goto :goto_4

    .line 4252
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 114
    aget v2, p3, v8

    aget p3, p3, v0

    add-int/2addr v2, p3

    int-to-float p3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    add-int/2addr v6, v1

    int-to-float v1, v6

    div-float/2addr v1, v2

    .line 116
    new-instance v2, Lcom/google/c/o;

    const/4 v3, 0x0

    new-array v4, v11, [Lcom/google/c/q;

    new-instance v5, Lcom/google/c/q;

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/google/c/q;-><init>(FF)V

    aput-object v5, v4, v0

    new-instance p3, Lcom/google/c/q;

    invoke-direct {p3, v1, p1}, Lcom/google/c/q;-><init>(FF)V

    aput-object p3, v4, v8

    sget-object p1, Lcom/google/c/a;->d:Lcom/google/c/a;

    invoke-direct {v2, p2, v3, v4, p1}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    return-object v2

    .line 105
    :cond_b
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    .line 100
    :cond_c
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :cond_d
    move v1, v6

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 3193
    :cond_f
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    .line 85
    :cond_10
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    .line 1145
    :cond_11
    aget v9, v2, v0

    aget v10, v2, v8

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    add-int/lit8 v9, v3, -0x2

    .line 1146
    invoke-static {v2, v11, v2, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    aput v0, v2, v9

    .line 1148
    aput v0, v2, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 1153
    :goto_8
    aput v8, v2, v5

    xor-int/lit8 v4, v4, 0x1

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1157
    :cond_13
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
