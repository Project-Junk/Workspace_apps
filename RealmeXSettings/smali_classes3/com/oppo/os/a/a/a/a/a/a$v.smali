.class public final Lcom/oppo/os/a/a/a/a/a/a$v;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$v$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$v;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/oppo/os/a/a/a/a/a/a$v;


# instance fields
.field private final c:Lcom/google/protobuf/UnknownFieldSet;

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6573
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$v$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$v$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$v;->a:Lcom/google/protobuf/Parser;

    .line 7160
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$v;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$v;-><init>()V

    .line 7161
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$v;->b:Lcom/oppo/os/a/a/a/a/a/a$v;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$v;->k()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6491
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 6702
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->h:B

    .line 6727
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->i:I

    .line 6491
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6511
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 6702
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->h:B

    .line 6727
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->i:I

    .line 6512
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->k()V

    .line 6515
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 6519
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_1

    .line 6525
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$v;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 6544
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 6545
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    .line 6546
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->g:Ljava/lang/Object;

    goto :goto_0

    .line 6538
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 6539
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    .line 6540
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6532
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 6533
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    .line 6534
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->e:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6554
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 6555
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 6552
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6557
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 6558
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->makeExtensionsImmutable()V

    .line 6559
    throw p1

    .line 6557
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 6558
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6482
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$v;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 6488
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 6702
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->h:B

    .line 6727
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->i:I

    .line 6489
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 6482
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$v;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$v;I)I
    .locals 0

    .line 6482
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    return p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    .line 7810
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    .line 6813
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$v;
    .locals 1

    .line 6495
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$v;->b:Lcom/oppo/os/a/a/a/a/a/a$v;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6482
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$v;)Ljava/lang/Object;
    .locals 0

    .line 6482
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6482
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$v;)Ljava/lang/Object;
    .locals 0

    .line 6482
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6482
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/oppo/os/a/a/a/a/a/a$v;)Ljava/lang/Object;
    .locals 0

    .line 6482
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static e()Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    .line 6810
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .line 6482
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$v;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private h()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6613
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->e:Ljava/lang/Object;

    .line 6614
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6615
    check-cast v0, Ljava/lang/String;

    .line 6616
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6618
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->e:Ljava/lang/Object;

    return-object v0

    .line 6621
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private i()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6649
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->f:Ljava/lang/Object;

    .line 6650
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6651
    check-cast v0, Ljava/lang/String;

    .line 6652
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6654
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->f:Ljava/lang/Object;

    return-object v0

    .line 6657
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private j()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6685
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->g:Ljava/lang/Object;

    .line 6686
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6687
    check-cast v0, Ljava/lang/String;

    .line 6688
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6690
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->g:Ljava/lang/Object;

    return-object v0

    .line 6693
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private k()V
    .locals 1

    const-string v0, ""

    .line 6698
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->e:Ljava/lang/Object;

    .line 6699
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->f:Ljava/lang/Object;

    .line 6700
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 6593
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 6629
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 6665
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    .line 8810
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    .line 7813
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13499
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$v;->b:Lcom/oppo/os/a/a/a/a/a/a$v;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12499
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$v;->b:Lcom/oppo/os/a/a/a/a/a/a$v;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$v;",
            ">;"
        }
    .end annotation

    .line 6585
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$v;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 6729
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 6733
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 6735
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->h()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 6737
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 6739
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->i()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 6741
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 6743
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->j()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 6745
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 6746
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->i:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 6506
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 6568
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$v;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$v$a;

    .line 6569
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 6704
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 6708
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->h:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10810
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 8820
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$v$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$v$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11810
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6482
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->f()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6482
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->f()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 6754
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6714
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->getSerializedSize()I

    .line 6715
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 6716
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->h()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6718
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 6719
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->i()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6721
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6722
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->j()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6724
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
