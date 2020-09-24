.class public Lcom/github/javiersantos/licensing/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    nop

    .line 66
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/github/javiersantos/licensing/util/Base64;->ALPHABET:[B

    .line 84
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/github/javiersantos/licensing/util/Base64;->WEBSAFE_ALPHABET:[B

    .line 103
    const/16 v0, 0x80

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/github/javiersantos/licensing/util/Base64;->DECODABET:[B

    .line 146
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/github/javiersantos/licensing/util/Base64;->WEBSAFE_DECODABET:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javiersantos/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 465
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/github/javiersantos/licensing/util/Base64;->decode([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([B)[B
    .locals 2
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javiersantos/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 493
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/github/javiersantos/licensing/util/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)[B
    .locals 1
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javiersantos/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/github/javiersantos/licensing/util/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/github/javiersantos/licensing/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII[B)[B
    .locals 16
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "decodabet"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javiersantos/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 564
    move/from16 v0, p2

    move-object/from16 v1, p3

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x4

    div-int/2addr v2, v3

    .line 565
    .local v2, "len34":I
    add-int/lit8 v4, v2, 0x2

    new-array v4, v4, [B

    .line 566
    .local v4, "outBuff":[B
    const/4 v5, 0x0

    .line 568
    .local v5, "outBuffPosn":I
    new-array v6, v3, [B

    .line 569
    .local v6, "b4":[B
    const/4 v7, 0x0

    .line 573
    .local v7, "b4Posn":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0x3d

    const/4 v11, 0x1

    if-ge v8, v0, :cond_9

    .line 574
    add-int v12, v8, p1

    aget-byte v12, p0, v12

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v12, v12

    .line 575
    .local v12, "sbiCrop":B
    aget-byte v13, v1, v12

    .line 577
    .local v13, "sbiDecode":B
    const/4 v14, -0x5

    if-lt v13, v14, :cond_8

    .line 578
    const/4 v14, -0x1

    if-lt v13, v14, :cond_7

    .line 581
    if-ne v12, v9, :cond_5

    .line 582
    sub-int v14, v0, v8

    .line 583
    .local v14, "bytesLeft":I
    add-int/lit8 v15, v0, -0x1

    add-int v15, v15, p1

    aget-byte v15, p0, v15

    and-int/lit8 v15, v15, 0x7f

    int-to-byte v15, v15

    .line 584
    .local v15, "lastByte":B
    if-eqz v7, :cond_4

    if-eq v7, v11, :cond_4

    .line 587
    const/4 v10, 0x3

    if-ne v7, v10, :cond_0

    const/4 v10, 0x2

    if-gt v14, v10, :cond_1

    :cond_0
    if-ne v7, v3, :cond_2

    if-gt v14, v11, :cond_1

    goto :goto_1

    .line 589
    :cond_1
    new-instance v3, Lcom/github/javiersantos/licensing/util/Base64DecoderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/github/javiersantos/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_2
    :goto_1
    if-eq v15, v9, :cond_9

    const/16 v3, 0xa

    if-ne v15, v3, :cond_3

    goto :goto_3

    .line 593
    :cond_3
    new-instance v3, Lcom/github/javiersantos/licensing/util/Base64DecoderException;

    const-string v9, "encoded value has invalid trailing byte"

    invoke-direct {v3, v9}, Lcom/github/javiersantos/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    :cond_4
    new-instance v3, Lcom/github/javiersantos/licensing/util/Base64DecoderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid padding byte \'=\' at byte offset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/github/javiersantos/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 599
    .end local v14    # "bytesLeft":I
    .end local v15    # "lastByte":B
    :cond_5
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "b4Posn":I
    .local v9, "b4Posn":I
    aput-byte v12, v6, v7

    .line 600
    if-ne v9, v3, :cond_6

    .line 601
    const/4 v7, 0x0

    invoke-static {v6, v7, v4, v5, v1}, Lcom/github/javiersantos/licensing/util/Base64;->decode4to3([BI[BI[B)I

    move-result v7

    add-int/2addr v5, v7

    .line 602
    const/4 v7, 0x0

    .end local v9    # "b4Posn":I
    .restart local v7    # "b4Posn":I
    goto :goto_2

    .line 600
    .end local v7    # "b4Posn":I
    .restart local v9    # "b4Posn":I
    :cond_6
    move v7, v9

    .line 573
    .end local v9    # "b4Posn":I
    .restart local v7    # "b4Posn":I
    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 606
    :cond_8
    new-instance v3, Lcom/github/javiersantos/licensing/util/Base64DecoderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad Base64 input character at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v10, v8, p1

    aget-byte v10, p0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "(decimal)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/github/javiersantos/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    .end local v12    # "sbiCrop":B
    .end local v13    # "sbiDecode":B
    :cond_9
    :goto_3
    if-eqz v7, :cond_b

    .line 618
    if-eq v7, v11, :cond_a

    .line 622
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "b4Posn":I
    .local v3, "b4Posn":I
    aput-byte v9, v6, v7

    .line 623
    const/4 v7, 0x0

    invoke-static {v6, v7, v4, v5, v1}, Lcom/github/javiersantos/licensing/util/Base64;->decode4to3([BI[BI[B)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_4

    .line 619
    .end local v3    # "b4Posn":I
    .restart local v7    # "b4Posn":I
    :cond_a
    new-instance v3, Lcom/github/javiersantos/licensing/util/Base64DecoderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "single trailing character at offset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/github/javiersantos/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    :cond_b
    move v3, v7

    .line 626
    .end local v7    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    :goto_4
    new-array v7, v5, [B

    .line 627
    .local v7, "out":[B
    const/4 v9, 0x0

    invoke-static {v4, v9, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    return-object v7
.end method

.method private static decode4to3([BI[BI[B)I
    .locals 3
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "decodabet"    # [B

    .line 420
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 421
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    .line 425
    .local v0, "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 426
    const/4 v1, 0x1

    return v1

    .line 427
    .end local v0    # "outBuff":I
    :cond_0
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_1

    .line 429
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    .line 434
    .restart local v0    # "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 435
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 436
    const/4 v1, 0x2

    return v1

    .line 439
    .end local v0    # "outBuff":I
    :cond_1
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 445
    .restart local v0    # "outBuff":I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 446
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 447
    add-int/lit8 v1, p3, 0x2

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 448
    const/4 v1, 0x3

    return v1
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javiersantos/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 479
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/github/javiersantos/licensing/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decodeWebSafe([B)[B
    .locals 2
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javiersantos/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 507
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/github/javiersantos/licensing/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([BII)[B
    .locals 1
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javiersantos/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 544
    sget-object v0, Lcom/github/javiersantos/licensing/util/Base64;->WEBSAFE_DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/github/javiersantos/licensing/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B

    .line 273
    array-length v0, p0

    sget-object v1, Lcom/github/javiersantos/licensing/util/Base64;->ALPHABET:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v1, v3}, Lcom/github/javiersantos/licensing/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[BZ)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "doPadding"    # Z

    .line 308
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v0}, Lcom/github/javiersantos/licensing/util/Base64;->encode([BII[BI)[B

    move-result-object v0

    .line 309
    .local v0, "outBuff":[B
    array-length v1, v0

    .line 313
    .local v1, "outLen":I
    :goto_0
    if-nez p4, :cond_1

    if-lez v1, :cond_1

    .line 314
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    .line 315
    goto :goto_1

    .line 317
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 320
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method public static encode([BII[BI)[B
    .locals 16
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "maxLineLength"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    .line 342
    move/from16 v6, p2

    move/from16 v7, p4

    add-int/lit8 v0, v6, 0x2

    div-int/lit8 v8, v0, 0x3

    .line 343
    .local v8, "lenDiv3":I
    mul-int/lit8 v9, v8, 0x4

    .line 344
    .local v9, "len43":I
    div-int v0, v9, v7

    add-int/2addr v0, v9

    new-array v10, v0, [B

    .line 347
    .local v10, "outBuff":[B
    const/4 v0, 0x0

    .line 348
    .local v0, "d":I
    const/4 v1, 0x0

    .line 349
    .local v1, "e":I
    add-int/lit8 v11, v6, -0x2

    .line 350
    .local v11, "len2":I
    const/4 v2, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    .line 351
    .end local v0    # "d":I
    .end local v1    # "e":I
    .local v12, "d":I
    .local v13, "e":I
    .local v14, "lineLength":I
    :goto_0
    const/16 v15, 0xa

    if-ge v12, v11, :cond_1

    .line 356
    add-int v0, v12, p1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v12, 0x1

    add-int v1, v1, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v12, 0x2

    add-int v1, v1, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 360
    .local v0, "inBuff":I
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p3, v1

    aput-byte v1, v10, v13

    .line 361
    add-int/lit8 v1, v13, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 362
    add-int/lit8 v1, v13, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 363
    add-int/lit8 v1, v13, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 365
    add-int/lit8 v14, v14, 0x4

    .line 366
    if-ne v14, v7, :cond_0

    .line 367
    add-int/lit8 v1, v13, 0x4

    aput-byte v15, v10, v1

    .line 368
    add-int/lit8 v13, v13, 0x1

    .line 369
    const/4 v1, 0x0

    move v14, v1

    .line 351
    .end local v0    # "inBuff":I
    :cond_0
    add-int/lit8 v12, v12, 0x3

    add-int/lit8 v13, v13, 0x4

    goto :goto_0

    .line 373
    :cond_1
    if-ge v12, v6, :cond_3

    .line 374
    add-int v1, v12, p1

    sub-int v2, v6, v12

    move-object/from16 v0, p0

    move-object v3, v10

    move v4, v13

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/github/javiersantos/licensing/util/Base64;->encode3to4([BII[BI[B)[B

    .line 376
    add-int/lit8 v14, v14, 0x4

    .line 377
    if-ne v14, v7, :cond_2

    .line 379
    add-int/lit8 v0, v13, 0x4

    aput-byte v15, v10, v0

    .line 380
    add-int/lit8 v13, v13, 0x1

    .line 382
    :cond_2
    add-int/lit8 v13, v13, 0x4

    .line 385
    :cond_3
    nop

    .line 386
    return-object v10
.end method

.method private static encode3to4([BII[BI[B)[B
    .locals 4
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "alphabet"    # [B

    .line 234
    const/4 v0, 0x0

    if-lez p2, :cond_0

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    or-int/2addr v1, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :cond_2
    or-int/2addr v0, v1

    .line 239
    .local v0, "inBuff":I
    const/16 v1, 0x3d

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    .line 259
    return-object p3

    .line 241
    :cond_3
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 242
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 243
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 244
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 245
    return-object p3

    .line 247
    :cond_4
    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, p5, v2

    aput-byte v2, p3, p4

    .line 248
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 249
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 250
    add-int/lit8 v2, p4, 0x3

    aput-byte v1, p3, v2

    .line 251
    return-object p3

    .line 253
    :cond_5
    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, p5, v2

    aput-byte v2, p3, p4

    .line 254
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 255
    add-int/lit8 v2, p4, 0x2

    aput-byte v1, p3, v2

    .line 256
    add-int/lit8 v2, p4, 0x3

    aput-byte v1, p3, v2

    .line 257
    return-object p3
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [B
    .param p1, "doPadding"    # Z

    .line 286
    array-length v0, p0

    sget-object v1, Lcom/github/javiersantos/licensing/util/Base64;->WEBSAFE_ALPHABET:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/github/javiersantos/licensing/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
