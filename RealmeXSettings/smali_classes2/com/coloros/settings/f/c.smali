.class public final Lcom/coloros/settings/f/c;
.super Ljava/lang/Object;
.source "WordQuery.java"


# static fields
.field static a:I = 0x3007

.field static b:I = 0xf979

.field static c:Ljava/lang/String; = " "

.field static d:[Ljava/lang/Object;

.field static e:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 40
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/coloros/settings/f/c;->d:[Ljava/lang/Object;

    const/16 v1, 0x33

    .line 41
    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_4

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_5

    const/4 v2, 0x5

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_6

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_9

    const/16 v2, 0x9

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_a

    const/16 v2, 0xa

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_b

    const/16 v2, 0xb

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_c

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_d

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_e

    const/16 v2, 0xe

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_f

    const/16 v2, 0xf

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_10

    const/16 v2, 0x10

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_11

    const/16 v2, 0x11

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_12

    const/16 v2, 0x12

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_13

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_15

    const/16 v2, 0x15

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_16

    const/16 v2, 0x16

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_17

    const/16 v2, 0x17

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_18

    const/16 v2, 0x18

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_19

    const/16 v2, 0x19

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_1a

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_1b

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_1c

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_1d

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_1e

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_1f

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_20

    const/16 v2, 0x20

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_21

    const/16 v2, 0x21

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_22

    const/16 v2, 0x22

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_23

    const/16 v2, 0x23

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_24

    const/16 v2, 0x24

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_25

    const/16 v2, 0x25

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_26

    const/16 v2, 0x26

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_27

    const/16 v2, 0x27

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_28

    const/16 v2, 0x28

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_29

    const/16 v2, 0x29

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2a

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2b

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2c

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2d

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2e

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2f

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_30

    const/16 v2, 0x30

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_31

    const/16 v2, 0x31

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_32

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lcom/coloros/settings/f/c;->e:[[I

    return-void

    :array_0
    .array-data 4
        0x3007
        0x4fa1
    .end array-data

    :array_1
    .array-data 4
        0x4fa2
        0x5141
    .end array-data

    :array_2
    .array-data 4
        0x5142
        0x52e8
    .end array-data

    :array_3
    .array-data 4
        0x52e9
        0x548a
    .end array-data

    :array_4
    .array-data 4
        0x548b
        0x562f
    .end array-data

    :array_5
    .array-data 4
        0x5630
        0x57d0
    .end array-data

    :array_6
    .array-data 4
        0x57d1
        0x5971
    .end array-data

    :array_7
    .array-data 4
        0x5972
        0x5b11
    .end array-data

    :array_8
    .array-data 4
        0x5b12
        0x5cb1
    .end array-data

    :array_9
    .array-data 4
        0x5cb2
        0x5e52
    .end array-data

    :array_a
    .array-data 4
        0x5e53
        0x5ff2
    .end array-data

    :array_b
    .array-data 4
        0x5ff3
        0x6193
    .end array-data

    :array_c
    .array-data 4
        0x6194
        0x6333
    .end array-data

    :array_d
    .array-data 4
        0x6334
        0x64d3
    .end array-data

    :array_e
    .array-data 4
        0x64d4
        0x6674
    .end array-data

    :array_f
    .array-data 4
        0x6675
        0x6819
    .end array-data

    :array_10
    .array-data 4
        0x681a
        0x69bb
    .end array-data

    :array_11
    .array-data 4
        0x69bc
        0x6b5b
    .end array-data

    :array_12
    .array-data 4
        0x6b5c
        0x6cfc
    .end array-data

    :array_13
    .array-data 4
        0x6cfd
        0x6e9c
    .end array-data

    :array_14
    .array-data 4
        0x6e9d
        0x703c
    .end array-data

    :array_15
    .array-data 4
        0x703d
        0x71dd
    .end array-data

    :array_16
    .array-data 4
        0x71de
        0x737e
    .end array-data

    :array_17
    .array-data 4
        0x737f
        0x7525
    .end array-data

    :array_18
    .array-data 4
        0x7526
        0x76c6
    .end array-data

    :array_19
    .array-data 4
        0x76c7
        0x7867
    .end array-data

    :array_1a
    .array-data 4
        0x7868
        0x7a08
    .end array-data

    :array_1b
    .array-data 4
        0x7a09
        0x7ba9
    .end array-data

    :array_1c
    .array-data 4
        0x7baa
        0x7d49
    .end array-data

    :array_1d
    .array-data 4
        0x7d4a
        0x7eea
    .end array-data

    :array_1e
    .array-data 4
        0x7eeb
        0x808b
    .end array-data

    :array_1f
    .array-data 4
        0x808c
        0x822c
    .end array-data

    :array_20
    .array-data 4
        0x822d
        0x83cd
    .end array-data

    :array_21
    .array-data 4
        0x83ce
        0x856e
    .end array-data

    :array_22
    .array-data 4
        0x856f
        0x8710
    .end array-data

    :array_23
    .array-data 4
        0x8711
        0x88b1
    .end array-data

    :array_24
    .array-data 4
        0x88b2
        0x8a52
    .end array-data

    :array_25
    .array-data 4
        0x8a53
        0x8bf2
    .end array-data

    :array_26
    .array-data 4
        0x8bf3
        0x8d92
    .end array-data

    :array_27
    .array-data 4
        0x8d93
        0x8f32
    .end array-data

    :array_28
    .array-data 4
        0x8f33
        0x90d3
    .end array-data

    :array_29
    .array-data 4
        0x90d4
        0x9273
    .end array-data

    :array_2a
    .array-data 4
        0x9274
        0x9414
    .end array-data

    :array_2b
    .array-data 4
        0x9415
        0x95b5
    .end array-data

    :array_2c
    .array-data 4
        0x95b6
        0x9758
    .end array-data

    :array_2d
    .array-data 4
        0x9759
        0x98f8
    .end array-data

    :array_2e
    .array-data 4
        0x98f9
        0x9a98
    .end array-data

    :array_2f
    .array-data 4
        0x9a99
        0x9c38
    .end array-data

    :array_30
    .array-data 4
        0x9c39
        0x9dd8
    .end array-data

    :array_31
    .array-data 4
        0x9dd9
        0x9f78
    .end array-data

    :array_32
    .array-data 4
        0x9f79
        0xf979
    .end array-data
.end method

.method public static a(C)C
    .locals 1

    .line 143
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/settings/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x30

    return p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 103
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 105
    sget-object v3, Lcom/coloros/settings/f/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    invoke-static {v1}, Lcom/coloros/settings/f/c;->c(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    .line 110
    aget-object v5, v3, v4

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, v3, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    move v1, v2

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(I[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 508
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-gt v0, v2, :cond_2

    add-int v3, v0, v2

    shr-int/lit8 v3, v3, 0x1

    .line 512
    aget-object v4, p1, v3

    .line 513
    aget-object v5, v4, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p0, v5, :cond_0

    return-object v4

    :cond_0
    if-ge p0, v5, :cond_1

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    .line 524
    :cond_2
    sget-object p0, Lcom/coloros/settings/f/c;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 123
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 125
    sget-object v1, Lcom/coloros/settings/f/c;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/f/c;->c(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    .line 131
    sget-object v1, Lcom/coloros/settings/f/c;->d:[Ljava/lang/Object;

    if-ne p0, v1, :cond_2

    return-object v0

    .line 135
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WordQuery"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static b(C)[Ljava/lang/String;
    .locals 0

    .line 201
    invoke-static {p0}, Lcom/coloros/settings/f/b;->a(C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    .line 1218
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 225
    sget v1, Lcom/coloros/settings/f/c;->a:I

    if-lt p0, v1, :cond_3

    sget v1, Lcom/coloros/settings/f/c;->b:I

    if-le p0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, -0x1

    move v2, v0

    .line 232
    :goto_0
    sget-object v3, Lcom/coloros/settings/f/c;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 233
    aget-object v3, v3, v2

    .line 235
    aget v4, v3, v0

    if-lt p0, v4, :cond_1

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gt p0, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 498
    sget-object p0, Lcom/coloros/settings/f/c;->d:[Ljava/lang/Object;

    goto/16 :goto_2

    .line 493
    :pswitch_0
    sget-object v0, Lcom/coloros/settings/f/a$au;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 488
    :pswitch_1
    sget-object v0, Lcom/coloros/settings/f/a$as;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 483
    :pswitch_2
    sget-object v0, Lcom/coloros/settings/f/a$ar;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 478
    :pswitch_3
    sget-object v0, Lcom/coloros/settings/f/a$aq;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 473
    :pswitch_4
    sget-object v0, Lcom/coloros/settings/f/a$ap;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 468
    :pswitch_5
    sget-object v0, Lcom/coloros/settings/f/a$ao;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 463
    :pswitch_6
    sget-object v0, Lcom/coloros/settings/f/a$an;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 458
    :pswitch_7
    sget-object v0, Lcom/coloros/settings/f/a$am;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 453
    :pswitch_8
    sget-object v0, Lcom/coloros/settings/f/a$al;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 448
    :pswitch_9
    sget-object v0, Lcom/coloros/settings/f/a$ak;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 443
    :pswitch_a
    sget-object v0, Lcom/coloros/settings/f/a$aj;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 438
    :pswitch_b
    sget-object v0, Lcom/coloros/settings/f/a$ah;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 433
    :pswitch_c
    sget-object v0, Lcom/coloros/settings/f/a$ag;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 428
    :pswitch_d
    sget-object v0, Lcom/coloros/settings/f/a$af;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 423
    :pswitch_e
    sget-object v0, Lcom/coloros/settings/f/a$ae;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 418
    :pswitch_f
    sget-object v0, Lcom/coloros/settings/f/a$ad;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 413
    :pswitch_10
    sget-object v0, Lcom/coloros/settings/f/a$ac;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 408
    :pswitch_11
    sget-object v0, Lcom/coloros/settings/f/a$ab;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 403
    :pswitch_12
    sget-object v0, Lcom/coloros/settings/f/a$aa;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 398
    :pswitch_13
    sget-object v0, Lcom/coloros/settings/f/a$z;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 393
    :pswitch_14
    sget-object v0, Lcom/coloros/settings/f/a$y;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 388
    :pswitch_15
    sget-object v0, Lcom/coloros/settings/f/a$w;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 383
    :pswitch_16
    sget-object v0, Lcom/coloros/settings/f/a$v;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 378
    :pswitch_17
    sget-object v0, Lcom/coloros/settings/f/a$u;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 373
    :pswitch_18
    sget-object v0, Lcom/coloros/settings/f/a$t;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 368
    :pswitch_19
    sget-object v0, Lcom/coloros/settings/f/a$s;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 363
    :pswitch_1a
    sget-object v0, Lcom/coloros/settings/f/a$r;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 358
    :pswitch_1b
    sget-object v0, Lcom/coloros/settings/f/a$q;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 353
    :pswitch_1c
    sget-object v0, Lcom/coloros/settings/f/a$p;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 348
    :pswitch_1d
    sget-object v0, Lcom/coloros/settings/f/a$o;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 343
    :pswitch_1e
    sget-object v0, Lcom/coloros/settings/f/a$n;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 338
    :pswitch_1f
    sget-object v0, Lcom/coloros/settings/f/a$l;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 333
    :pswitch_20
    sget-object v0, Lcom/coloros/settings/f/a$k;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 328
    :pswitch_21
    sget-object v0, Lcom/coloros/settings/f/a$j;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 323
    :pswitch_22
    sget-object v0, Lcom/coloros/settings/f/a$i;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 318
    :pswitch_23
    sget-object v0, Lcom/coloros/settings/f/a$h;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 313
    :pswitch_24
    sget-object v0, Lcom/coloros/settings/f/a$g;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 308
    :pswitch_25
    sget-object v0, Lcom/coloros/settings/f/a$f;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 303
    :pswitch_26
    sget-object v0, Lcom/coloros/settings/f/a$e;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 298
    :pswitch_27
    sget-object v0, Lcom/coloros/settings/f/a$d;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 293
    :pswitch_28
    sget-object v0, Lcom/coloros/settings/f/a$c;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 288
    :pswitch_29
    sget-object v0, Lcom/coloros/settings/f/a$ay;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 283
    :pswitch_2a
    sget-object v0, Lcom/coloros/settings/f/a$ax;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 278
    :pswitch_2b
    sget-object v0, Lcom/coloros/settings/f/a$aw;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 273
    :pswitch_2c
    sget-object v0, Lcom/coloros/settings/f/a$av;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 268
    :pswitch_2d
    sget-object v0, Lcom/coloros/settings/f/a$at;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 263
    :pswitch_2e
    sget-object v0, Lcom/coloros/settings/f/a$ai;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 258
    :pswitch_2f
    sget-object v0, Lcom/coloros/settings/f/a$x;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 253
    :pswitch_30
    sget-object v0, Lcom/coloros/settings/f/a$m;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 248
    :pswitch_31
    sget-object v0, Lcom/coloros/settings/f/a$b;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 243
    :pswitch_32
    sget-object v0, Lcom/coloros/settings/f/a$a;->a:[[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/coloros/settings/f/c;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0

    .line 226
    :cond_3
    :goto_3
    sget-object p0, Lcom/coloros/settings/f/c;->d:[Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
