.class public Lcom/google/android/a/a/m;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic a:Z

.field private static e:[B

.field private static f:[B


# instance fields
.field private b:Ljava/io/ByteArrayInputStream;

.field private c:Lcom/google/android/a/a/l;

.field private d:Lcom/google/android/a/a/j;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/google/android/a/a/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/a/a/m;->a:Z

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/google/android/a/a/m;->e:[B

    .line 79
    sput-object v0, Lcom/google/android/a/a/m;->f:[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/android/a/a/m;->b:Ljava/io/ByteArrayInputStream;

    .line 64
    iput-object v0, p0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    .line 69
    iput-object v0, p0, Lcom/google/android/a/a/m;->d:Lcom/google/android/a/a/j;

    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/a/m;->b:Ljava/io/ByteArrayInputStream;

    .line 101
    iput-boolean p2, p0, Lcom/google/android/a/a/m;->g:Z

    return-void
.end method

.method private static a(Lcom/google/android/a/a/n;)I
    .locals 3

    .line 1763
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1764
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/a/a/m;->e:[B

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/a/a/m;->f:[B

    if-nez v0, :cond_2

    return v1

    .line 1770
    :cond_2
    sget-object v0, Lcom/google/android/a/a/m;->f:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1771
    invoke-virtual {p0}, Lcom/google/android/a/a/n;->a()[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1773
    sget-object v0, Lcom/google/android/a/a/m;->f:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-ne v1, p0, :cond_3

    return v2

    :cond_3
    return v1

    .line 1783
    :cond_4
    sget-object v0, Lcom/google/android/a/a/m;->e:[B

    if-eqz v0, :cond_5

    .line 1784
    invoke-virtual {p0}, Lcom/google/android/a/a/n;->d()[B

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1786
    sget-object v0, Lcom/google/android/a/a/m;->e:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-ne v1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method private static a(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/l;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 241
    :cond_0
    new-instance v2, Lcom/google/android/a/a/l;

    invoke-direct {v2}, Lcom/google/android/a/a/l;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    :catch_0
    :cond_1
    :goto_0
    if-eqz v4, :cond_11

    .line 243
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_11

    .line 244
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 245
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_2

    .line 248
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 249
    invoke-static {v0, v7}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    goto :goto_0

    :cond_2
    const-string v8, "/"

    const-string v9, " is not Integer-Value"

    const-string v10, "is not Octet header field!"

    const-string v11, " into the header filed: "

    const-string v12, "Set invalid Octet value: "

    const/16 v13, 0x81

    const/16 v14, 0x80

    const-string v15, "is not Text-String header field!"

    const-string v7, "is not Encoded-String-Value header field!"

    const-string v6, "is not Long-Integer header field!"

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 776
    :pswitch_1
    invoke-static {v0, v1}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto :goto_0

    .line 367
    :pswitch_2
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->i(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v7

    .line 372
    invoke-virtual {v2, v7, v8, v5}, Lcom/google/android/a/a/l;->a(JI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 374
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 754
    :pswitch_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    .line 757
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    .line 761
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->i(Ljava/io/ByteArrayInputStream;)J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 763
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 732
    :pswitch_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    .line 735
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    .line 738
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->e(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/e;

    goto :goto_0

    .line 694
    :pswitch_5
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    .line 698
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->i(Ljava/io/ByteArrayInputStream;)J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 706
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->h(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v7

    const/16 v9, 0xa1

    .line 711
    invoke-virtual {v2, v7, v8, v9}, Lcom/google/android/a/a/l;->a(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 714
    :catch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 700
    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 659
    :pswitch_6
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    .line 663
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->i(Ljava/io/ByteArrayInputStream;)J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 671
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->e(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/e;

    move-result-object v6

    if-eqz v6, :cond_1

    const/16 v8, 0xa0

    .line 678
    :try_start_5
    invoke-virtual {v2, v6, v8}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/e;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 683
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 665
    :catch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 430
    :pswitch_7
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->e(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/e;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 437
    :try_start_6
    invoke-virtual {v2, v6, v5}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/e;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 441
    :catch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 636
    :pswitch_8
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->g(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    const/16 v7, 0x8d

    .line 643
    :try_start_7
    invoke-virtual {v2, v6, v7}, Lcom/google/android/a/a/l;->a(II)V
    :try_end_7
    .catch Lcom/google/android/a/a; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_0

    .line 649
    :catch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 645
    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v1

    .line 259
    :pswitch_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 283
    :try_start_8
    invoke-virtual {v2, v6, v5}, Lcom/google/android/a/a/l;->a(II)V
    :try_end_8
    .catch Lcom/google/android/a/a; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a

    goto/16 :goto_0

    :pswitch_a
    return-object v1

    .line 289
    :catch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 285
    :catch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v1

    .line 584
    :pswitch_b
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 585
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    const/16 v7, 0x8a

    if-lt v6, v14, :cond_6

    if-ne v14, v6, :cond_3

    :try_start_9
    const-string v6, "personal"

    .line 596
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 595
    invoke-virtual {v2, v6, v7}, Lcom/google/android/a/a/l;->a([BI)V

    goto/16 :goto_0

    :cond_3
    if-ne v13, v6, :cond_4

    const-string v6, "advertisement"

    .line 600
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 599
    invoke-virtual {v2, v6, v7}, Lcom/google/android/a/a/l;->a([BI)V

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0x82

    if-ne v8, v6, :cond_5

    const-string v6, "informational"

    .line 604
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 603
    invoke-virtual {v2, v6, v7}, Lcom/google/android/a/a/l;->a([BI)V

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0x83

    if-ne v8, v6, :cond_1

    const-string v6, "auto"

    .line 608
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 607
    invoke-virtual {v2, v6, v7}, Lcom/google/android/a/a/l;->a([BI)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_0

    .line 614
    :catch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 619
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v6, 0x0

    .line 620
    invoke-static {v0, v6}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_1

    .line 623
    :try_start_a
    invoke-virtual {v2, v6, v7}, Lcom/google/android/a/a/l;->a([BI)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_0

    .line 627
    :catch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 532
    :pswitch_c
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    .line 535
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    if-ne v14, v6, :cond_8

    .line 540
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->e(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/e;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 542
    invoke-virtual {v6}, Lcom/google/android/a/a/e;->a()[B

    move-result-object v9

    .line 544
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 545
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_7

    const/4 v9, 0x0

    .line 547
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 550
    :cond_7
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/a/a/e;->a([B)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_1

    :catch_e
    return-object v1

    .line 559
    :cond_8
    :try_start_c
    new-instance v6, Lcom/google/android/a/a/e;

    const-string v8, "insert-address-token"

    .line 560
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/google/android/a/a/e;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_10

    :cond_9
    :goto_1
    const/16 v8, 0x89

    .line 572
    :try_start_d
    invoke-virtual {v2, v6, v8}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/e;I)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_f

    goto/16 :goto_0

    .line 576
    :catch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 562
    :catch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 494
    :pswitch_d
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    .line 497
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 502
    :try_start_e
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->h(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_12

    if-ne v13, v7, :cond_a

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 518
    :cond_a
    :try_start_f
    invoke-virtual {v2, v8, v9, v5}, Lcom/google/android/a/a/l;->a(JI)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_11

    goto/16 :goto_0

    .line 520
    :catch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 504
    :catch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 323
    :pswitch_e
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 330
    :try_start_10
    invoke-virtual {v2, v6, v5}, Lcom/google/android/a/a/l;->a(II)V
    :try_end_10
    .catch Lcom/google/android/a/a; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_13

    goto/16 :goto_0

    .line 336
    :catch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 332
    :catch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v1

    .line 348
    :pswitch_f
    :try_start_11
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->h(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v7

    .line 353
    invoke-virtual {v2, v7, v8, v5}, Lcom/google/android/a/a/l;->a(JI)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_15

    goto/16 :goto_0

    .line 355
    :catch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 784
    :pswitch_10
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 787
    invoke-static {v0, v4}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    if-eqz v6, :cond_b

    const/16 v7, 0x84

    .line 795
    :try_start_12
    invoke-virtual {v2, v6, v7}, Lcom/google/android/a/a/l;->a([BI)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_16

    goto :goto_2

    .line 799
    :catch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    :catch_17
    :cond_b
    :goto_2
    const/16 v5, 0x99

    .line 805
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sput-object v5, Lcom/google/android/a/a/m;->f:[B

    const/16 v5, 0x83

    .line 808
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    sput-object v4, Lcom/google/android/a/a/m;->e:[B

    const/4 v4, 0x0

    goto/16 :goto_0

    :pswitch_11
    const/4 v6, 0x0

    .line 401
    invoke-static {v0, v6}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_1

    .line 408
    :try_start_13
    invoke-virtual {v2, v6, v5}, Lcom/google/android/a/a/l;->a([BI)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_18

    goto/16 :goto_0

    .line 412
    :catch_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 454
    :pswitch_12
    invoke-static/range {p0 .. p0}, Lcom/google/android/a/a/m;->e(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/e;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 456
    invoke-virtual {v6}, Lcom/google/android/a/a/e;->a()[B

    move-result-object v9

    .line 458
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 463
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_c

    const/4 v9, 0x0

    .line 465
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 468
    :cond_c
    :try_start_14
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/a/a/e;->a([B)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1a

    if-eqz v6, :cond_10

    if-eq v5, v13, :cond_e

    const/16 v8, 0x82

    if-eq v5, v8, :cond_e

    const/16 v8, 0x97

    if-ne v5, v8, :cond_d

    goto :goto_3

    .line 3663
    :cond_d
    :try_start_15
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v8, "Invalid header field!"

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3666
    :cond_e
    :goto_3
    iget-object v8, v2, Lcom/google/android/a/a/l;->a:Ljava/util/HashMap;

    .line 3667
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_f

    .line 3669
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3671
    :cond_f
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3672
    iget-object v6, v2, Lcom/google/android/a/a/l;->a:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3654
    :cond_10
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_19

    .line 480
    :catch_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_1a
    return-object v1

    :cond_11
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_12
        :pswitch_11
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_11
        :pswitch_f
        :pswitch_6
        :pswitch_5
        :pswitch_e
        :pswitch_e
        :pswitch_4
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_3
        :pswitch_e
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_2
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private static a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1360
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1361
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1363
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1365
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    const-string v3, "Corrupt Content-Type"

    const-string v4, "PduParser"

    if-lez v1, :cond_13

    .line 1367
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1368
    sget-boolean v6, Lcom/google/android/a/a/m;->a:Z

    const/4 v7, -0x1

    if-nez v6, :cond_5

    if-eq v7, v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    const/16 v6, 0x7f

    const/4 v8, 0x1

    const/16 v9, 0x81

    if-eq v5, v9, :cond_e

    const/16 v9, 0x83

    if-eq v5, v9, :cond_b

    const/16 v10, 0x85

    const/16 v11, 0x97

    if-eq v5, v10, :cond_9

    if-eq v5, v11, :cond_9

    const/16 v10, 0x99

    if-eq v5, v10, :cond_7

    const/16 v11, 0x89

    if-eq v5, v11, :cond_b

    const/16 v6, 0x8a

    if-eq v5, v6, :cond_7

    .line 1502
    invoke-static {p0, v1}, Lcom/google/android/a/a/m;->c(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v7, v5, :cond_6

    .line 1503
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_2

    .line 1427
    :cond_7
    invoke-static {p0, v2}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 1429
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    :cond_8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1433
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 1490
    :cond_9
    invoke-static {p0, v2}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    .line 1492
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1496
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_4
    sub-int v1, v0, v1

    sub-int v1, v3, v1

    goto :goto_2

    .line 1387
    :cond_b
    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1388
    invoke-static {p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1389
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    if-le v1, v6, :cond_c

    .line 1392
    invoke-static {p0}, Lcom/google/android/a/a/m;->g(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1394
    sget-object v3, Lcom/google/android/a/a/k;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 1395
    sget-object v3, Lcom/google/android/a/a/k;->a:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1396
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1402
    :cond_c
    invoke-static {p0, v2}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_d

    if-eqz p1, :cond_d

    .line 1404
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    :cond_d
    :goto_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1409
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 1451
    :cond_e
    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1452
    invoke-static {p0}, Lcom/google/android/a/a/m;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1453
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v3, 0x20

    if-le v1, v3, :cond_f

    if-lt v1, v6, :cond_10

    :cond_f
    if-nez v1, :cond_11

    .line 1458
    :cond_10
    invoke-static {p0, v2}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1460
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/a/a/c;->a(Ljava/lang/String;)I

    move-result v3

    .line 1462
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v3

    .line 1465
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1466
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1470
    :cond_11
    invoke-static {p0}, Lcom/google/android/a/a/m;->i(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v3

    long-to-int v1, v3

    if-eqz p1, :cond_12

    .line 1472
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    :cond_12
    :goto_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1477
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_4

    :cond_13
    if-eqz v1, :cond_14

    .line 1512
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method private a(Ljava/io/ByteArrayInputStream;Lcom/google/android/a/a/n;I)Z
    .locals 10

    .line 1596
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1598
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_3

    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1616
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    move v2, p3

    :cond_4
    :goto_2
    const-string v3, "Corrupt Part headers"

    const-string v4, "PduParser"

    const/4 v5, 0x1

    if-lez v2, :cond_19

    .line 1620
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 1621
    sget-boolean v7, Lcom/google/android/a/a/m;->a:Z

    const/4 v8, -0x1

    if-nez v7, :cond_6

    if-eq v8, v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    const/16 v7, 0x7f

    if-le v6, v7, :cond_15

    const/16 v7, 0x8e

    if-eq v6, v7, :cond_13

    const/16 v7, 0xae

    if-eq v6, v7, :cond_c

    const/16 v7, 0xc0

    if-eq v6, v7, :cond_8

    const/16 v7, 0xc5

    if-eq v6, v7, :cond_c

    .line 1714
    invoke-static {p1, v2}, Lcom/google/android/a/a/m;->c(Ljava/io/ByteArrayInputStream;I)I

    move-result v2

    if-ne v8, v2, :cond_7

    .line 1715
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    move v2, v1

    goto :goto_2

    .line 1645
    :cond_8
    invoke-static {p1, v5}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    if-eqz v2, :cond_b

    if-eqz v2, :cond_a

    .line 4197
    array-length v3, v2

    if-eqz v3, :cond_a

    .line 4202
    array-length v3, v2

    const/16 v4, 0x3e

    const/16 v6, 0x3c

    if-le v3, v5, :cond_9

    aget-byte v3, v2, v1

    int-to-char v3, v3

    if-ne v3, v6, :cond_9

    array-length v3, v2

    sub-int/2addr v3, v5

    aget-byte v3, v2, v3

    int-to-char v3, v3

    if-ne v3, v4, :cond_9

    .line 4205
    iget-object v3, p2, Lcom/google/android/a/a/n;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4210
    :cond_9
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 4211
    aput-byte v6, v3, v1

    .line 4212
    array-length v6, v3

    sub-int/2addr v6, v5

    aput-byte v4, v3, v6

    .line 4213
    array-length v4, v2

    invoke-static {v2, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4214
    iget-object v2, p2, Lcom/google/android/a/a/n;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4198
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content-Id may not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1650
    :cond_b
    :goto_4
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    goto/16 :goto_7

    .line 1668
    :cond_c
    iget-boolean v3, p0, Lcom/google/android/a/a/m;->g:Z

    if-eqz v3, :cond_4

    .line 1669
    invoke-static {p1}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1670
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1671
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1673
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_d

    .line 1676
    sget-object v4, Lcom/google/android/a/a/n;->a:[B

    invoke-virtual {p2, v4}, Lcom/google/android/a/a/n;->c([B)V

    goto :goto_5

    :cond_d
    const/16 v5, 0x81

    if-ne v4, v5, :cond_e

    .line 1678
    sget-object v4, Lcom/google/android/a/a/n;->b:[B

    invoke-virtual {p2, v4}, Lcom/google/android/a/a/n;->c([B)V

    goto :goto_5

    :cond_e
    const/16 v5, 0x82

    if-ne v4, v5, :cond_f

    .line 1680
    sget-object v4, Lcom/google/android/a/a/n;->c:[B

    invoke-virtual {p2, v4}, Lcom/google/android/a/a/n;->c([B)V

    goto :goto_5

    .line 1682
    :cond_f
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1684
    invoke-static {p1, v1}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/a/a/n;->c([B)V

    .line 1689
    :goto_5
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    sub-int v4, v3, v4

    if-ge v4, v2, :cond_12

    .line 1691
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    const/16 v5, 0x98

    if-ne v4, v5, :cond_11

    .line 1693
    invoke-static {p1, v1}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    if-eqz v4, :cond_10

    .line 4381
    iget-object v6, p2, Lcom/google/android/a/a/n;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 4378
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null content-id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1698
    :cond_11
    :goto_6
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_12

    sub-int/2addr v2, v3

    .line 1701
    new-array v3, v2, [B

    .line 1702
    invoke-virtual {p1, v3, v1, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1706
    :cond_12
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    goto :goto_7

    .line 1632
    :cond_13
    invoke-static {p1, v1}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1634
    invoke-virtual {p2, v2}, Lcom/google/android/a/a/n;->b([B)V

    .line 1637
    :cond_14
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    :goto_7
    sub-int v2, v0, v2

    sub-int v2, p3, v2

    goto/16 :goto_2

    :cond_15
    const/16 v9, 0x20

    if-lt v6, v9, :cond_18

    if-gt v6, v7, :cond_18

    .line 1723
    invoke-static {p1, v1}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 1724
    invoke-static {p1, v1}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1727
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "Content-Transfer-Encoding"

    .line 1728
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v5, v2, :cond_17

    if-eqz v3, :cond_16

    .line 5335
    iget-object v2, p2, Lcom/google/android/a/a/n;->d:Ljava/util/Map;

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 5332
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null content-transfer-encoding"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1732
    :cond_17
    :goto_8
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    goto :goto_7

    .line 1739
    :cond_18
    invoke-static {p1, v2}, Lcom/google/android/a/a/m;->c(Ljava/io/ByteArrayInputStream;I)I

    move-result v2

    if-ne v8, v2, :cond_7

    .line 1740
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_19
    if-eqz v2, :cond_1a

    .line 1748
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1a
    return v5
.end method

.method private static a(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3

    .line 1071
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1089
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1092
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1093
    sget-boolean v2, Lcom/google/android/a/a/m;->a:Z

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-ne v0, p1, :cond_4

    const/16 v2, 0x22

    if-ne v2, v1, :cond_4

    .line 1097
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_5

    .line 1101
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2

    .line 1104
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1112
    :goto_2
    invoke-static {p0, p1}, Lcom/google/android/a/a/m;->b(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1531
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1534
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1535
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1536
    sget-boolean v2, Lcom/google/android/a/a/m;->a:Z

    const/4 v3, -0x1

    if-nez v2, :cond_3

    if-eq v3, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1537
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    const/16 v4, 0x7f

    const/4 v5, 0x0

    if-ge v1, v2, :cond_a

    .line 1542
    invoke-static {p0}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1543
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 1544
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1545
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1546
    sget-boolean v7, Lcom/google/android/a/a/m;->a:Z

    if-nez v7, :cond_5

    if-eq v3, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1547
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v0, v0, 0xff

    const-string v3, "PduParser"

    if-lt v0, v2, :cond_6

    if-gt v0, v4, :cond_6

    .line 1551
    invoke-static {p0, v5}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_3

    :cond_6
    if-le v0, v4, :cond_9

    .line 1553
    invoke-static {p0}, Lcom/google/android/a/a/m;->g(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1555
    sget-object v2, Lcom/google/android/a/a/k;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 1556
    sget-object v2, Lcom/google/android/a/a/k;->a:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_3

    .line 1558
    :cond_7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1559
    invoke-static {p0, v5}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1566
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int/2addr v6, v2

    sub-int/2addr v1, v6

    if-lez v1, :cond_8

    .line 1569
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    :cond_8
    if-gez v1, :cond_c

    const-string p0, "Corrupt MMS message"

    .line 1573
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    sget-object p0, Lcom/google/android/a/a/k;->a:[Ljava/lang/String;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "Corrupt content-type"

    .line 1562
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    sget-object p0, Lcom/google/android/a/a/k;->a:[Ljava/lang/String;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_a
    if-gt v1, v4, :cond_b

    .line 1577
    invoke-static {p0, v5}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_4

    .line 1579
    :cond_b
    sget-object p1, Lcom/google/android/a/a/k;->a:[Ljava/lang/String;

    .line 1580
    invoke-static {p0}, Lcom/google/android/a/a/m;->g(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_c
    :goto_4
    return-object v0
.end method

.method private b(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/j;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 840
    :cond_0
    invoke-static {p1}, Lcom/google/android/a/a/m;->c(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 841
    new-instance v2, Lcom/google/android/a/a/j;

    invoke-direct {v2}, Lcom/google/android/a/a/j;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_e

    .line 844
    invoke-static {p1}, Lcom/google/android/a/a/m;->c(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 845
    invoke-static {p1}, Lcom/google/android/a/a/m;->c(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 846
    new-instance v7, Lcom/google/android/a/a/n;

    invoke-direct {v7}, Lcom/google/android/a/a/n;-><init>()V

    .line 847
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    if-gtz v8, :cond_1

    return-object v0

    .line 854
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 855
    invoke-static {p1, v9}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v10

    if-eqz v10, :cond_2

    .line 857
    invoke-virtual {v7, v10}, Lcom/google/android/a/a/n;->d([B)V

    goto :goto_1

    .line 859
    :cond_2
    sget-object v10, Lcom/google/android/a/a/k;->a:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/a/a/n;->d([B)V

    :goto_1
    const/16 v10, 0x97

    .line 863
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    if-eqz v10, :cond_3

    .line 865
    invoke-virtual {v7, v10}, Lcom/google/android/a/a/n;->e([B)V

    :cond_3
    const/16 v10, 0x81

    .line 869
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_4

    .line 871
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/android/a/a/n;->a(I)V

    .line 875
    :cond_4
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v5, v8

    if-lez v5, :cond_5

    .line 878
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;Lcom/google/android/a/a/n;I)Z

    move-result v5

    if-nez v5, :cond_6

    return-object v0

    :cond_5
    if-gez v5, :cond_6

    return-object v0

    .line 890
    :cond_6
    invoke-virtual {v7}, Lcom/google/android/a/a/n;->b()[B

    move-result-object v5

    if-nez v5, :cond_7

    .line 891
    invoke-virtual {v7}, Lcom/google/android/a/a/n;->f()[B

    move-result-object v5

    if-nez v5, :cond_7

    .line 892
    invoke-virtual {v7}, Lcom/google/android/a/a/n;->g()[B

    move-result-object v5

    if-nez v5, :cond_7

    .line 893
    invoke-virtual {v7}, Lcom/google/android/a/a/n;->a()[B

    move-result-object v5

    if-nez v5, :cond_7

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 894
    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v5

    .line 895
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 894
    invoke-virtual {v7, v5}, Lcom/google/android/a/a/n;->b([B)V

    :cond_7
    if-lez v6, :cond_c

    .line 900
    new-array v5, v6, [B

    .line 901
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/a/a/n;->d()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 902
    invoke-virtual {p1, v5, v3, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const-string v6, "application/vnd.wap.multipart.alternative"

    .line 903
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 905
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v6}, Lcom/google/android/a/a/m;->b(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/j;

    move-result-object v5

    .line 907
    invoke-virtual {v5, v3}, Lcom/google/android/a/a/j;->a(I)Lcom/google/android/a/a/n;

    move-result-object v7

    goto :goto_3

    .line 910
    :cond_8
    invoke-virtual {v7}, Lcom/google/android/a/a/n;->e()[B

    move-result-object v6

    if-eqz v6, :cond_a

    .line 912
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    const-string v6, "base64"

    .line 913
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 915
    invoke-static {v5}, Lcom/google/android/a/a/b;->a([B)[B

    move-result-object v5

    goto :goto_2

    :cond_9
    const-string v6, "quoted-printable"

    .line 916
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 918
    invoke-static {v5}, Lcom/google/android/a/a/p;->a([B)[B

    move-result-object v5

    :cond_a
    :goto_2
    if-nez v5, :cond_b

    return-object v0

    .line 927
    :cond_b
    invoke-virtual {v7, v5}, Lcom/google/android/a/a/n;->a([B)V

    .line 932
    :cond_c
    :goto_3
    invoke-static {v7}, Lcom/google/android/a/a/m;->a(Lcom/google/android/a/a/n;)I

    move-result v5

    if-nez v5, :cond_d

    .line 934
    invoke-virtual {v2, v7}, Lcom/google/android/a/a/j;->b(Lcom/google/android/a/a/n;)V

    goto :goto_4

    .line 937
    :cond_d
    invoke-virtual {v2, v7}, Lcom/google/android/a/a/j;->a(Lcom/google/android/a/a/n;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    return-object v2
.end method

.method private static b(Ljava/io/ByteArrayInputStream;I)[B
    .locals 7

    .line 1193
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1194
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1195
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1196
    sget-boolean v2, Lcom/google/android/a/a/m;->a:Z

    const/4 v3, -0x1

    if-nez v2, :cond_3

    if-eq v3, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-eq v3, v1, :cond_c

    if-eqz v1, :cond_c

    const/4 v2, 0x2

    const/16 v4, 0x7e

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, v2, :cond_6

    const/16 v2, 0x21

    if-lt v1, v2, :cond_5

    if-le v1, v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_5

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_5

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_5

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_5

    const/16 v2, 0x28

    if-eq v1, v2, :cond_5

    const/16 v2, 0x29

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    move v6, v5

    :cond_5
    :goto_2
    :pswitch_0
    if-eqz v6, :cond_a

    .line 1201
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_6
    const/16 v2, 0x20

    if-lt v1, v2, :cond_7

    if-le v1, v4, :cond_9

    :cond_7
    const/16 v2, 0x80

    if-lt v1, v2, :cond_8

    const/16 v2, 0xff

    if-gt v1, v2, :cond_8

    goto :goto_3

    :cond_8
    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v2, 0xd

    if-eq v1, v2, :cond_9

    move v5, v6

    :cond_9
    :goto_3
    if-eqz v5, :cond_a

    .line 1205
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1209
    :cond_a
    :goto_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1210
    sget-boolean v2, Lcom/google/android/a/a/m;->a:Z

    if-nez v2, :cond_3

    if-eq v3, v1, :cond_b

    goto :goto_1

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1213
    :cond_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_d

    .line 1214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    .line 967
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 969
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return v1

    :cond_2
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_3

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    .line 977
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_2

    return v1

    :cond_3
    shl-int/lit8 p0, v0, 0x7

    and-int/lit8 v0, v1, 0x7f

    or-int/2addr p0, v0

    return p0
.end method

.method private static c(Ljava/io/ByteArrayInputStream;I)I
    .locals 2

    .line 1322
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1323
    :cond_1
    :goto_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 1324
    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    if-ge p0, p1, :cond_2

    const/4 p0, -0x1

    :cond_2
    return p0
.end method

.method private static d(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    .line 1004
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1005
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1006
    sget-boolean v1, Lcom/google/android/a/a/m;->a:Z

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_5

    .line 1012
    invoke-static {p0}, Lcom/google/android/a/a/m;->c(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    return p0

    .line 1015
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Value length > LENGTH_QUOTE!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static e(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/e;
    .locals 3

    .line 1029
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1030
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1033
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1034
    sget-boolean v1, Lcom/google/android/a/a/m;->a:Z

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_4

    .line 1037
    new-instance p0, Lcom/google/android/a/a/e;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/android/a/a/e;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1040
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    .line 1042
    invoke-static {p0}, Lcom/google/android/a/a/m;->d(Ljava/io/ByteArrayInputStream;)I

    .line 1044
    invoke-static {p0}, Lcom/google/android/a/a/m;->g(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1047
    :goto_2
    invoke-static {p0, v2}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    if-eqz v0, :cond_6

    .line 1051
    :try_start_0
    new-instance v1, Lcom/google/android/a/a/e;

    invoke-direct {v1, v0, p0}, Lcom/google/android/a/a/e;-><init>(I[B)V

    goto :goto_3

    .line 1053
    :cond_6
    new-instance v1, Lcom/google/android/a/a/e;

    invoke-direct {v1, p0}, Lcom/google/android/a/a/e;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Ljava/io/ByteArrayInputStream;)I
    .locals 1

    .line 1227
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1228
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    .line 1229
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_3

    const/4 v0, -0x1

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static g(Ljava/io/ByteArrayInputStream;)I
    .locals 1

    .line 1247
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1248
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    .line 1249
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_3

    const/4 v0, -0x1

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    and-int/lit8 p0, p0, 0x7f

    return p0
.end method

.method private static h(Ljava/io/ByteArrayInputStream;)J
    .locals 8

    .line 1270
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1271
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1272
    sget-boolean v1, Lcom/google/android/a/a/m;->a:Z

    const/4 v2, -0x1

    if-nez v1, :cond_3

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    if-gt v0, v1, :cond_7

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_6

    .line 1282
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 1283
    sget-boolean v7, Lcom/google/android/a/a/m;->a:Z

    if-nez v7, :cond_5

    if-eq v2, v6, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_3
    shl-long/2addr v3, v1

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return-wide v3

    .line 1276
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static i(Ljava/io/ByteArrayInputStream;)J
    .locals 2

    .line 1302
    sget-boolean v0, Lcom/google/android/a/a/m;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1303
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1304
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1305
    sget-boolean v1, Lcom/google/android/a/a/m;->a:Z

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1306
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_4

    .line 1308
    invoke-static {p0}, Lcom/google/android/a/a/m;->g(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 1310
    :cond_4
    invoke-static {p0}, Lcom/google/android/a/a/m;->h(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()Lcom/google/android/a/a/f;
    .locals 17

    move-object/from16 v0, p0

    .line 111
    iget-object v1, v0, Lcom/google/android/a/a/m;->b:Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 116
    :cond_0
    invoke-static {v1}, Lcom/google/android/a/a/m;->a(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/l;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    .line 117
    iget-object v1, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/16 v3, 0x8c

    .line 123
    invoke-virtual {v1, v3}, Lcom/google/android/a/a/l;->a(I)I

    move-result v1

    .line 126
    iget-object v4, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    const/16 v5, 0x84

    const/4 v6, 0x0

    if-nez v4, :cond_2

    :goto_0
    move v3, v6

    goto/16 :goto_1

    .line 2807
    :cond_2
    invoke-virtual {v4, v3}, Lcom/google/android/a/a/l;->a(I)I

    move-result v3

    const/16 v7, 0x8d

    .line 2810
    invoke-virtual {v4, v7}, Lcom/google/android/a/a/l;->a(I)I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    const/16 v7, 0x9b

    const/16 v8, 0x95

    const/16 v9, 0x97

    const/16 v10, 0x8b

    const/16 v11, 0x89

    const/16 v12, 0x85

    const-wide/16 v13, -0x1

    const/16 v15, 0x98

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2948
    :pswitch_0
    invoke-virtual {v4, v12}, Lcom/google/android/a/a/l;->e(I)J

    move-result-wide v15

    cmp-long v3, v13, v15

    if-nez v3, :cond_4

    goto :goto_0

    .line 2954
    :cond_4
    invoke-virtual {v4, v11}, Lcom/google/android/a/a/l;->c(I)Lcom/google/android/a/a/e;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 2960
    :cond_5
    invoke-virtual {v4, v10}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 2966
    :cond_6
    invoke-virtual {v4, v7}, Lcom/google/android/a/a/l;->a(I)I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 2972
    :cond_7
    invoke-virtual {v4, v9}, Lcom/google/android/a/a/l;->d(I)[Lcom/google/android/a/a/e;

    move-result-object v3

    if-nez v3, :cond_17

    goto :goto_0

    .line 2980
    :pswitch_1
    invoke-virtual {v4, v11}, Lcom/google/android/a/a/l;->c(I)Lcom/google/android/a/a/e;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_0

    .line 2986
    :cond_8
    invoke-virtual {v4, v10}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_0

    .line 2992
    :cond_9
    invoke-virtual {v4, v7}, Lcom/google/android/a/a/l;->a(I)I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    .line 2998
    :cond_a
    invoke-virtual {v4, v9}, Lcom/google/android/a/a/l;->d(I)[Lcom/google/android/a/a/e;

    move-result-object v3

    if-nez v3, :cond_17

    goto :goto_0

    .line 2914
    :pswitch_2
    invoke-virtual {v4, v12}, Lcom/google/android/a/a/l;->e(I)J

    move-result-wide v11

    cmp-long v3, v13, v11

    if-nez v3, :cond_b

    goto :goto_0

    .line 2920
    :cond_b
    invoke-virtual {v4, v10}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_0

    .line 2926
    :cond_c
    invoke-virtual {v4, v8}, Lcom/google/android/a/a/l;->a(I)I

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    .line 2932
    :cond_d
    invoke-virtual {v4, v9}, Lcom/google/android/a/a/l;->d(I)[Lcom/google/android/a/a/e;

    move-result-object v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    .line 2940
    :pswitch_3
    invoke-virtual {v4, v15}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    .line 2900
    :pswitch_4
    invoke-virtual {v4, v5}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    .line 2906
    :cond_e
    invoke-virtual {v4, v12}, Lcom/google/android/a/a/l;->e(I)J

    move-result-wide v3

    cmp-long v3, v13, v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    .line 2886
    :pswitch_5
    invoke-virtual {v4, v8}, Lcom/google/android/a/a/l;->a(I)I

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    .line 2892
    :cond_f
    invoke-virtual {v4, v15}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :pswitch_6
    const/16 v3, 0x83

    .line 2854
    invoke-virtual {v4, v3}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x88

    .line 2860
    invoke-virtual {v4, v3}, Lcom/google/android/a/a/l;->e(I)J

    move-result-wide v7

    cmp-long v3, v13, v7

    if-nez v3, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x8a

    .line 2866
    invoke-virtual {v4, v3}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x8e

    .line 2872
    invoke-virtual {v4, v3}, Lcom/google/android/a/a/l;->e(I)J

    move-result-wide v7

    cmp-long v3, v13, v7

    if-nez v3, :cond_13

    goto/16 :goto_0

    .line 2878
    :cond_13
    invoke-virtual {v4, v15}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :pswitch_7
    const/16 v3, 0x92

    .line 2840
    invoke-virtual {v4, v3}, Lcom/google/android/a/a/l;->a(I)I

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    .line 2846
    :cond_14
    invoke-virtual {v4, v15}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    .line 2820
    :pswitch_8
    invoke-virtual {v4, v5}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_15

    goto/16 :goto_0

    .line 2826
    :cond_15
    invoke-virtual {v4, v11}, Lcom/google/android/a/a/l;->c(I)Lcom/google/android/a/a/e;

    move-result-object v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    .line 2832
    :cond_16
    invoke-virtual {v4, v15}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_18

    return-object v2

    :cond_18
    const/16 v3, 0x80

    if-eq v3, v1, :cond_19

    if-ne v5, v1, :cond_1a

    .line 134
    :cond_19
    iget-object v3, v0, Lcom/google/android/a/a/m;->b:Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Lcom/google/android/a/a/m;->b(Ljava/io/ByteArrayInputStream;)Lcom/google/android/a/a/j;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/a/a/m;->d:Lcom/google/android/a/a/j;

    .line 135
    iget-object v3, v0, Lcom/google/android/a/a/m;->d:Lcom/google/android/a/a/j;

    if-nez v3, :cond_1a

    return-object v2

    :cond_1a
    packed-switch v1, :pswitch_data_1

    return-object v2

    .line 214
    :pswitch_9
    new-instance v1, Lcom/google/android/a/a/q;

    iget-object v2, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    invoke-direct {v1, v2}, Lcom/google/android/a/a/q;-><init>(Lcom/google/android/a/a/l;)V

    return-object v1

    .line 221
    :pswitch_a
    new-instance v1, Lcom/google/android/a/a/r;

    iget-object v2, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    invoke-direct {v1, v2}, Lcom/google/android/a/a/r;-><init>(Lcom/google/android/a/a/l;)V

    return-object v1

    .line 200
    :pswitch_b
    new-instance v1, Lcom/google/android/a/a/d;

    iget-object v2, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    invoke-direct {v1, v2}, Lcom/google/android/a/a/d;-><init>(Lcom/google/android/a/a/l;)V

    return-object v1

    .line 207
    :pswitch_c
    new-instance v1, Lcom/google/android/a/a/a;

    iget-object v2, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    invoke-direct {v1, v2}, Lcom/google/android/a/a/a;-><init>(Lcom/google/android/a/a/l;)V

    return-object v1

    .line 172
    :pswitch_d
    new-instance v1, Lcom/google/android/a/a/s;

    iget-object v3, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    iget-object v4, v0, Lcom/google/android/a/a/m;->d:Lcom/google/android/a/a/j;

    invoke-direct {v1, v3, v4}, Lcom/google/android/a/a/s;-><init>(Lcom/google/android/a/a/l;Lcom/google/android/a/a/j;)V

    .line 175
    invoke-virtual {v1}, Lcom/google/android/a/a/s;->a()[B

    move-result-object v3

    if-nez v3, :cond_1b

    return-object v2

    .line 179
    :cond_1b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "application/vnd.wap.multipart.mixed"

    .line 180
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "application/vnd.wap.multipart.related"

    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "application/vnd.wap.multipart.alternative"

    .line 182
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_2

    .line 187
    :cond_1c
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 190
    iget-object v2, v0, Lcom/google/android/a/a/m;->d:Lcom/google/android/a/a/j;

    invoke-virtual {v2, v6}, Lcom/google/android/a/a/j;->a(I)Lcom/google/android/a/a/n;

    move-result-object v2

    .line 191
    iget-object v3, v0, Lcom/google/android/a/a/m;->d:Lcom/google/android/a/a/j;

    .line 3119
    iget-object v3, v3, Lcom/google/android/a/a/j;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 192
    iget-object v3, v0, Lcom/google/android/a/a/m;->d:Lcom/google/android/a/a/j;

    invoke-virtual {v3, v2}, Lcom/google/android/a/a/j;->b(Lcom/google/android/a/a/n;)V

    return-object v1

    :cond_1d
    return-object v2

    :cond_1e
    :goto_2
    return-object v1

    .line 165
    :pswitch_e
    new-instance v1, Lcom/google/android/a/a/i;

    iget-object v2, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    invoke-direct {v1, v2}, Lcom/google/android/a/a/i;-><init>(Lcom/google/android/a/a/l;)V

    return-object v1

    .line 158
    :pswitch_f
    new-instance v1, Lcom/google/android/a/a/h;

    iget-object v2, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    invoke-direct {v1, v2}, Lcom/google/android/a/a/h;-><init>(Lcom/google/android/a/a/l;)V

    return-object v1

    .line 152
    :pswitch_10
    new-instance v1, Lcom/google/android/a/a/t;

    iget-object v2, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    invoke-direct {v1, v2}, Lcom/google/android/a/a/t;-><init>(Lcom/google/android/a/a/l;)V

    return-object v1

    .line 146
    :pswitch_11
    new-instance v1, Lcom/google/android/a/a/u;

    iget-object v2, v0, Lcom/google/android/a/a/m;->c:Lcom/google/android/a/a/l;

    iget-object v3, v0, Lcom/google/android/a/a/m;->d:Lcom/google/android/a/a/j;

    invoke-direct {v1, v2, v3}, Lcom/google/android/a/a/u;-><init>(Lcom/google/android/a/a/l;Lcom/google/android/a/a/j;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x80
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

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
