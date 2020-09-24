.class public final Lcom/oppo/os/a/a/a/a/a/a$l;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$l$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$l;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/oppo/os/a/a/a/a/a/a$l;


# instance fields
.field private final c:Lcom/google/protobuf/UnknownFieldSet;

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:B

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4550
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$l$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$l$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$l;->a:Lcom/google/protobuf/Parser;

    .line 5732
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$l;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$l;-><init>()V

    .line 5733
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$l;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$l;->u()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4438
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 4864
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->m:B

    .line 4904
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->n:I

    .line 4438
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4458
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 4864
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->m:B

    .line 4904
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->n:I

    .line 4459
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->u()V

    .line 4462
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 4466
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v4, 0x12

    if-eq v3, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_6

    const/16 v4, 0x22

    if-eq v3, v4, :cond_5

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x32

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x42

    if-eq v3, v4, :cond_1

    .line 4472
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4521
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 4522
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    .line 4523
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->l:Ljava/lang/Object;

    goto :goto_0

    .line 4515
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 4516
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    .line 4517
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->k:Ljava/lang/Object;

    goto :goto_0

    .line 4509
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 4510
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    .line 4511
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->j:Ljava/lang/Object;

    goto :goto_0

    .line 4503
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 4504
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    .line 4505
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->i:Ljava/lang/Object;

    goto :goto_0

    .line 4497
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 4498
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    .line 4499
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->h:Ljava/lang/Object;

    goto :goto_0

    .line 4491
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 4492
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    .line 4493
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->g:Ljava/lang/Object;

    goto :goto_0

    .line 4485
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 4486
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    .line 4487
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->f:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4479
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 4480
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    .line 4481
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->e:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    move v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4531
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 4532
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4529
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4534
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 4535
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->makeExtensionsImmutable()V

    .line 4536
    throw p1

    .line 4534
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 4535
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4429
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$l;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4435
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 4864
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->m:B

    .line 4904
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->n:I

    .line 4436
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 4429
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$l;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$l;I)I
    .locals 0

    .line 4429
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    return p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    .line 6007
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    .line 5010
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$l;
    .locals 1

    .line 4442
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$l;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->k:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;
    .locals 0

    .line 4429
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public static j()Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    .line 5007
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    .line 4429
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$l;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private m()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4590
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->e:Ljava/lang/Object;

    .line 4591
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4592
    check-cast v0, Ljava/lang/String;

    .line 4593
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4595
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->e:Ljava/lang/Object;

    return-object v0

    .line 4598
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private n()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4626
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->f:Ljava/lang/Object;

    .line 4627
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4628
    check-cast v0, Ljava/lang/String;

    .line 4629
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4631
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->f:Ljava/lang/Object;

    return-object v0

    .line 4634
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private o()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4662
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->g:Ljava/lang/Object;

    .line 4663
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4664
    check-cast v0, Ljava/lang/String;

    .line 4665
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4667
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->g:Ljava/lang/Object;

    return-object v0

    .line 4670
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private p()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4698
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->h:Ljava/lang/Object;

    .line 4699
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4700
    check-cast v0, Ljava/lang/String;

    .line 4701
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4703
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->h:Ljava/lang/Object;

    return-object v0

    .line 4706
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private q()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4734
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->i:Ljava/lang/Object;

    .line 4735
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4736
    check-cast v0, Ljava/lang/String;

    .line 4737
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4739
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->i:Ljava/lang/Object;

    return-object v0

    .line 4742
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private r()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4770
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->j:Ljava/lang/Object;

    .line 4771
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4772
    check-cast v0, Ljava/lang/String;

    .line 4773
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4775
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->j:Ljava/lang/Object;

    return-object v0

    .line 4778
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private s()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4806
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->k:Ljava/lang/Object;

    .line 4807
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4808
    check-cast v0, Ljava/lang/String;

    .line 4809
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4811
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->k:Ljava/lang/Object;

    return-object v0

    .line 4814
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private t()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4842
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->l:Ljava/lang/Object;

    .line 4843
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4844
    check-cast v0, Ljava/lang/String;

    .line 4845
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4847
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->l:Ljava/lang/Object;

    return-object v0

    .line 4850
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private u()V
    .locals 1

    const-string v0, ""

    .line 4855
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->e:Ljava/lang/Object;

    .line 4856
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->f:Ljava/lang/Object;

    .line 4857
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->g:Ljava/lang/Object;

    .line 4858
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->h:Ljava/lang/Object;

    .line 4859
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->i:Ljava/lang/Object;

    .line 4860
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->j:Ljava/lang/Object;

    .line 4861
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->k:Ljava/lang/Object;

    .line 4862
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 4570
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

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

    .line 4606
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

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

    .line 4642
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 4678
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 2

    .line 4714
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 4750
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x20

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

    .line 11446
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$l;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10446
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$l;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$l;",
            ">;"
        }
    .end annotation

    .line 4562
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$l;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 4906
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4910
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4912
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->m()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4914
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 4916
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->n()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4918
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 4920
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->o()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4922
    :cond_3
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 4924
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->p()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4926
    :cond_4
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    .line 4928
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->q()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4930
    :cond_5
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 4932
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->r()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4934
    :cond_6
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x7

    .line 4936
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->s()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4938
    :cond_7
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 4940
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->t()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4942
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 4943
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->n:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 4453
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .line 4786
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 2

    .line 4822
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 4545
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->k()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$l;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$l$a;

    .line 4546
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4866
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4870
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->m:B

    return v1
.end method

.method public final k()Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    .line 7007
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    .line 6010
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9007
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 7017
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$l$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10007
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4429
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->k()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4429
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->k()Lcom/oppo/os/a/a/a/a/a/a$l$a;

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

    .line 4951
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4876
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->getSerializedSize()I

    .line 4877
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4878
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->m()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4880
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4881
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->n()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4883
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 4884
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->o()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4886
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 4887
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->p()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4889
    :cond_3
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 4890
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->q()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4892
    :cond_4
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 4893
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->r()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4895
    :cond_5
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 4896
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->s()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4898
    :cond_6
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l;->d:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 4899
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->t()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4901
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
