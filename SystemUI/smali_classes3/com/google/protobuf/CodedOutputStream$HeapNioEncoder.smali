.class final Lcom/google/protobuf/CodedOutputStream$HeapNioEncoder;
.super Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeapNioEncoder"
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private initialPosition:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1512
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 1513
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 1512
    invoke-direct {p0, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    .line 1514
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$HeapNioEncoder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 1515
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$HeapNioEncoder;->initialPosition:I

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 1521
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$HeapNioEncoder;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$HeapNioEncoder;->initialPosition:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$HeapNioEncoder;->getTotalBytesWritten()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
