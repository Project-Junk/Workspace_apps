.class public final Lcom/google/c/d/a/b;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final a:Ljava/text/NumberFormat;

.field private static final b:Ljava/text/NumberFormat;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 48
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "000000000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/d/a/b;->a:Ljava/text/NumberFormat;

    .line 49
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/d/a/b;->b:Ljava/text/NumberFormat;

    const-string v2, "\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb \ufffc\"#$%&\'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8"

    const-string v3, "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{\ufffc}~\u007f;<=>?[\\]^_ ,./:@!|\ufffc\ufff5\ufff6\ufffc\ufff0\ufff2\ufff3\ufff4\ufff7"

    const-string v4, "\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u00d0\u00d1\u00d2\u00d3\u00d4\u00d5\u00d6\u00d7\u00d8\u00d9\u00da\ufffa\u001c\u001d\u001e\u00db\u00dc\u00dd\u00de\u00df\u00aa\u00ac\u00b1\u00b2\u00b3\u00b5\u00b9\u00ba\u00bc\u00bd\u00be\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8"

    const-string v5, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u00f0\u00f1\u00f2\u00f3\u00f4\u00f5\u00f6\u00f7\u00f8\u00f9\u00fa\ufffa\u001c\u001d\u001e\ufffb\u00fb\u00fc\u00fd\u00fe\u00ff\u00a1\u00a8\u00ab\u00af\u00b0\u00b4\u00b7\u00b8\u00bb\u00bf\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8"

    const-string v6, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa\ufffc\ufffc\u001b\ufffb\u001c\u001d\u001e\u001f\u009f\u00a0\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a9\u00ad\u00ae\u00b6\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8"

    const-string v7, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?"

    .line 51
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/c/d/a/b;->c:[Ljava/lang/String;

    return-void
.end method

.method private static a([B[B)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 102
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 103
    aget-byte v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    .line 4097
    div-int/lit8 v4, v3, 0x6

    aget-byte v4, p0, v4

    rem-int/lit8 v3, v3, 0x6

    rsub-int/lit8 v3, v3, 0x5

    const/4 v5, 0x1

    shl-int v3, v5, v3

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    move v3, v5

    .line 103
    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v5

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static a([BI)Lcom/google/c/b/e;
    .locals 11

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x90

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x4d

    .line 89
    invoke-static {p0, v4, v1}, Lcom/google/c/d/a/b;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x5d

    .line 86
    invoke-static {p0, v4, v1}, Lcom/google/c/d/a/b;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    const/4 v6, 0x6

    const/4 v7, 0x0

    if-ne p1, v5, :cond_3

    const/16 v1, 0x1e

    .line 1121
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v1

    .line 71
    new-instance v2, Ljava/text/DecimalFormat;

    .line 2117
    new-array v3, v6, [B

    fill-array-data v3, :array_1

    invoke-static {p0, v3}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v3

    const-string v4, "0000000000"

    .line 71
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v3, v1

    .line 72
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2126
    :cond_3
    new-array v8, v6, [C

    sget-object v9, Lcom/google/c/d/a/b;->c:[Ljava/lang/String;

    aget-object v9, v9, v7

    new-array v10, v6, [B

    fill-array-data v10, :array_2

    invoke-static {p0, v10}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v8, v7

    sget-object v9, Lcom/google/c/d/a/b;->c:[Ljava/lang/String;

    aget-object v9, v9, v7

    new-array v10, v6, [B

    fill-array-data v10, :array_3

    invoke-static {p0, v10}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v8, v4

    sget-object v4, Lcom/google/c/d/a/b;->c:[Ljava/lang/String;

    aget-object v4, v4, v7

    new-array v9, v6, [B

    fill-array-data v9, :array_4

    invoke-static {p0, v9}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v8, v5

    sget-object v4, Lcom/google/c/d/a/b;->c:[Ljava/lang/String;

    aget-object v4, v4, v7

    new-array v5, v6, [B

    fill-array-data v5, :array_5

    invoke-static {p0, v5}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v8, v3

    sget-object v3, Lcom/google/c/d/a/b;->c:[Ljava/lang/String;

    aget-object v3, v3, v7

    new-array v4, v6, [B

    fill-array-data v4, :array_6

    invoke-static {p0, v4}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v8, v2

    sget-object v2, Lcom/google/c/d/a/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v7

    new-array v3, v6, [B

    fill-array-data v3, :array_7

    invoke-static {p0, v3}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 76
    :goto_0
    sget-object v2, Lcom/google/c/d/a/b;->b:Ljava/text/NumberFormat;

    const/16 v3, 0xa

    .line 3109
    new-array v4, v3, [B

    fill-array-data v4, :array_8

    invoke-static {p0, v4}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v4

    int-to-long v4, v4

    .line 76
    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 77
    sget-object v4, Lcom/google/c/d/a/b;->b:Ljava/text/NumberFormat;

    .line 3113
    new-array v5, v3, [B

    fill-array-data v5, :array_9

    invoke-static {p0, v5}, Lcom/google/c/d/a/b;->a([B[B)I

    move-result v5

    int-to-long v5, v5

    .line 77
    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x54

    .line 78
    invoke-static {p0, v3, v5}, Lcom/google/c/d/a/b;->a([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "[)>\u001e01\u001d"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x1d

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_1
    new-instance v1, Lcom/google/c/b/e;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/google/c/b/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :array_0
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    nop

    :array_6
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method

.method private static a([BII)Ljava/lang/String;
    .locals 12

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, p1

    move v4, v1

    move v6, v4

    move v5, v2

    :goto_0
    add-int v7, p1, p2

    const/4 v8, 0x1

    if-ge v3, v7, :cond_1

    .line 144
    sget-object v7, Lcom/google/c/d/a/b;->c:[Ljava/lang/String;

    aget-object v7, v7, v4

    aget-byte v9, p0, v3

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 181
    :pswitch_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 174
    aget-byte v7, p0, v3

    shl-int/lit8 v7, v7, 0x18

    add-int/2addr v3, v8

    aget-byte v9, p0, v3

    shl-int/lit8 v9, v9, 0x12

    add-int/2addr v7, v9

    add-int/2addr v3, v8

    aget-byte v9, p0, v3

    shl-int/lit8 v9, v9, 0xc

    add-int/2addr v7, v9

    add-int/2addr v3, v8

    aget-byte v9, p0, v3

    shl-int/lit8 v9, v9, 0x6

    add-int/2addr v7, v9

    add-int/2addr v3, v8

    aget-byte v9, p0, v3

    add-int/2addr v7, v9

    .line 175
    sget-object v9, Lcom/google/c/d/a/b;->a:Ljava/text/NumberFormat;

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    move v5, v2

    move v4, v8

    goto :goto_2

    :pswitch_3
    move v4, v1

    :pswitch_4
    move v5, v2

    goto :goto_2

    :pswitch_5
    const/4 v5, 0x3

    goto :goto_1

    :pswitch_6
    const/4 v5, 0x2

    :goto_1
    move v6, v4

    move v4, v1

    goto :goto_2

    :pswitch_7
    const v5, 0xfff0

    sub-int v5, v7, v5

    move v6, v4

    move v4, v5

    move v5, v8

    :goto_2
    add-int/lit8 v7, v5, -0x1

    if-nez v5, :cond_0

    move v4, v6

    :cond_0
    add-int/2addr v3, v8

    move v5, v7

    goto :goto_0

    .line 187
    :cond_1
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const p1, 0xfffc

    if-ne p0, p1, :cond_2

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 190
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xfff0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
