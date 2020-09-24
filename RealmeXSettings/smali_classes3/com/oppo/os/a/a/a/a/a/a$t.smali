.class public final Lcom/oppo/os/a/a/a/a/a/a$t;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$t$a;,
        Lcom/oppo/os/a/a/a/a/a/a$t$b;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$t;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/oppo/os/a/a/a/a/a/a$t;


# instance fields
.field b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field private final d:Lcom/google/protobuf/UnknownFieldSet;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8427
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$t$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t;->a:Lcom/google/protobuf/Parser;

    .line 8923
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$t;-><init>()V

    .line 8924
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$t;->c:Lcom/oppo/os/a/a/a/a/a/a$t;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$t;->h()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8346
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 8586
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->g:B

    .line 8608
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->h:I

    .line 8346
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8366
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 8586
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->g:B

    .line 8608
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->h:I

    .line 8367
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->h()V

    .line 8370
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 8374
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 8380
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$t;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 8398
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 8399
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    .line 8400
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->f:Ljava/lang/Object;

    goto :goto_0

    .line 8387
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 8388
    invoke-static {v3}, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a(I)Lcom/oppo/os/a/a/a/a/a/a$t$b;

    move-result-object v4

    if-nez v4, :cond_3

    .line 8390
    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 8392
    :cond_3
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    .line 8393
    iput-object v4, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;
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

    .line 8408
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 8409
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 8406
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8411
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 8412
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->makeExtensionsImmutable()V

    .line 8413
    throw p1

    .line 8411
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 8412
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8337
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$t;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 8343
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 8586
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->g:B

    .line 8608
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->h:I

    .line 8344
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 8337
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$t;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$t;I)I
    .locals 0

    .line 8337
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    return p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    .line 9687
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    .line 8690
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$t;Lcom/oppo/os/a/a/a/a/a/a$t$b;)Lcom/oppo/os/a/a/a/a/a/a$t$b;
    .locals 0

    .line 8337
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    return-object p1
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$t;
    .locals 1

    .line 8350
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$t;->c:Lcom/oppo/os/a/a/a/a/a/a$t;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8337
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static final b()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8417
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->t()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$t;)Ljava/lang/Object;
    .locals 0

    .line 8337
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static e()Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    .line 8687
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .line 8337
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$t;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private g()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8570
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->f:Ljava/lang/Object;

    .line 8571
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8572
    check-cast v0, Ljava/lang/String;

    .line 8573
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8575
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->f:Ljava/lang/Object;

    return-object v0

    .line 8578
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private h()V
    .locals 1

    .line 8583
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const-string v0, ""

    .line 8584
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->f:Ljava/lang/Object;

    return-void
.end method

.method private i()Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    .line 10687
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    .line 9690
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 8539
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 8550
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 15354
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$t;->c:Lcom/oppo/os/a/a/a/a/a/a$t;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14354
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$t;->c:Lcom/oppo/os/a/a/a/a/a/a$t;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$t;",
            ">;"
        }
    .end annotation

    .line 8439
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$t;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 8610
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 8614
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 8615
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8616
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$t$b;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 8618
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 8620
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->g()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 8622
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 8623
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->h:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 8361
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 8422
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->u()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$t;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$t$a;

    .line 8423
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 8588
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 8592
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->g:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12687
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 10697
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$t$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13687
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8337
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->i()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8337
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->i()Lcom/oppo/os/a/a/a/a/a/a$t$a;

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

    .line 8631
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

    .line 8598
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->getSerializedSize()I

    .line 8599
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 8600
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$t$b;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8602
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 8603
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->g()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8605
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
