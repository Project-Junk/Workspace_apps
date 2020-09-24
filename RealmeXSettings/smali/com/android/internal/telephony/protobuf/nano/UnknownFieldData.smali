.class final Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    return-void
.end method


# virtual methods
.method final computeSerializedSize()I
    .locals 2

    .line 58
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 77
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;

    .line 78
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 84
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method final writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method
