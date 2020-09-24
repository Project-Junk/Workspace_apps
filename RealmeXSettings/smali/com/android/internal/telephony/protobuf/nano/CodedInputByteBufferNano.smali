.class public final Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# static fields
.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 405
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const/16 v0, 0x40

    .line 409
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    const/high16 v0, 0x4000000

    .line 412
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 418
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    .line 419
    iput p2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr p3, p2

    .line 420
    iput p3, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 421
    iput p2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static newInstance([B)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .locals 2

    .line 52
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .locals 1

    .line 60
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 2

    .line 495
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 496
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 497
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 499
    iput v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 500
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 502
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    return-void
.end method


# virtual methods
.method public final checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-ne v0, p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1
.end method

.method public final getAbsolutePosition()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return v0
.end method

.method public final getBuffer()[B
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    return-object v0
.end method

.method public final getBytesUntilLimit()I
    .locals 2

    .line 521
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 525
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getData(II)[B
    .locals 3

    if-nez p2, :cond_0

    .line 568
    sget-object p1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object p1

    .line 570
    :cond_0
    new-array v0, p2, [B

    .line 571
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v1, p1

    .line 572
    iget-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final getPosition()I
    .locals 2

    .line 542
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final isAtEnd()Z
    .locals 2

    .line 535
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final popLimit(I)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 513
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public final pushLimit(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 482
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr p1, v0

    .line 483
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt p1, v0, :cond_0

    .line 487
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 485
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1

    .line 480
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1
.end method

.method public final readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final readBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 232
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 235
    new-array v1, v0, [B

    .line 236
    iget-object v3, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v0

    .line 243
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readGroup(Lcom/android/internal/telephony/protobuf/nano/MessageNano;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 208
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 209
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    const/4 p1, 0x4

    .line 211
    invoke-static {p2, p1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 212
    iget p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1
.end method

.method public final readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 222
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 225
    iget p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1
.end method

.method final readPrimitiveField(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 694
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown type "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 690
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 688
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 686
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 684
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readEnum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 682
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 680
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object p1

    return-object p1

    .line 678
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 676
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 674
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 672
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 670
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 668
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 666
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 664
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 662
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-eq v0, v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v1, v0

    return v0

    .line 598
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final readRawBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 614
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v1, v2, :cond_1

    .line 621
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    .line 623
    new-array v1, p1, [B

    .line 624
    iget-object v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v1

    .line 628
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 616
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 618
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1

    .line 611
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1
.end method

.method public final readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final readRawLittleEndian64()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readRawVarint32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public final readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public final readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 190
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    sget-object v4, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 194
    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v1

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 77
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eqz v0, :cond_1

    return v0

    .line 79
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final resetSizeCounter()V
    .locals 0

    return-void
.end method

.method public final rewindToPosition(I)V
    .locals 3

    .line 580
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 587
    iput v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bad position "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setRecursionLimit(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 436
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 437
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    return v0

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Recursion limit cannot be negative: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setSizeLimit(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 461
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 462
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    return v0

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Size limit cannot be negative: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    return v1

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    .line 119
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    return v1

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    return v1

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    return v1

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    return v1
.end method

.method public final skipMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final skipRawBytes(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 643
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v1, v2, :cond_1

    .line 650
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    .line 652
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void

    .line 654
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 645
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 647
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1

    .line 640
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p1

    throw p1
.end method
