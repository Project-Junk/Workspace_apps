.class public final Lcom/oppo/os/a/a/a/a/a/a$af;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "af"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$af$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$af;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/oppo/os/a/a/a/a/a/a$af;


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$z;",
            ">;"
        }
    .end annotation
.end field

.field e:J

.field private final g:Lcom/google/protobuf/UnknownFieldSet;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9606
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$af$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$af$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$af;->a:Lcom/google/protobuf/Parser;

    .line 10736
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$af;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$af;-><init>()V

    .line 10737
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$af;->f:Lcom/oppo/os/a/a/a/a/a/a$af;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$af;->k()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9498
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 9774
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->k:B

    .line 9808
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->l:I

    .line 9498
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->g:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9518
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 9774
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->k:B

    .line 9808
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->l:I

    .line 9519
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->k()V

    .line 9522
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    const/4 v4, 0x4

    const/16 v5, 0x8

    if-nez v1, :cond_c

    .line 9526
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    if-eqz v6, :cond_9

    if-eq v6, v5, :cond_8

    const/16 v7, 0x12

    if-eq v6, v7, :cond_7

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_5

    const/16 v7, 0x22

    if-eq v6, v7, :cond_3

    const/16 v7, 0x28

    if-eq v6, v7, :cond_2

    const/16 v7, 0x32

    if-eq v6, v7, :cond_1

    .line 9532
    invoke-virtual {p0, p1, v0, p2, v6}, Lcom/oppo/os/a/a/a/a/a/a$af;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 9571
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 9572
    iget v7, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    or-int/2addr v7, v5

    iput v7, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    .line 9573
    iput-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->j:Ljava/lang/Object;

    goto :goto_0

    .line 9566
    :cond_2
    iget v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    or-int/2addr v6, v4

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    .line 9567
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->e:J

    goto :goto_0

    :cond_3
    and-int/lit8 v6, v3, 0x8

    if-eq v6, v5, :cond_4

    .line 9559
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 9562
    :cond_4
    iget-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    sget-object v7, Lcom/oppo/os/a/a/a/a/a/a$z;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v6, v3, 0x4

    if-eq v6, v4, :cond_6

    .line 9551
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 9554
    :cond_6
    iget-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    sget-object v7, Lcom/oppo/os/a/a/a/a/a/a$f;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9544
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 9545
    iget v7, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    .line 9546
    iput-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->c:Ljava/lang/Object;

    goto :goto_0

    .line 9539
    :cond_8
    iget v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    .line 9540
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->b:I
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

    .line 9581
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 9582
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 9579
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x4

    if-ne p2, v4, :cond_a

    .line 9585
    iget-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v3, 0x8

    if-ne p2, v5, :cond_b

    .line 9588
    iget-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    .line 9590
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->g:Lcom/google/protobuf/UnknownFieldSet;

    .line 9591
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->makeExtensionsImmutable()V

    .line 9592
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x4

    if-ne p1, v4, :cond_d

    .line 9585
    iget-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v3, 0x8

    if-ne p1, v5, :cond_e

    .line 9588
    iget-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    .line 9590
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->g:Lcom/google/protobuf/UnknownFieldSet;

    .line 9591
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9489
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$af;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 9495
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 9774
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->k:B

    .line 9808
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->l:I

    .line 9496
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->g:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 9489
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$af;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$af;I)I
    .locals 0

    .line 9489
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->b:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$af;J)J
    .locals 0

    .line 9489
    iput-wide p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->e:J

    return-wide p1
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$af;
    .locals 1

    .line 9502
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$af;->f:Lcom/oppo/os/a/a/a/a/a/a$af;

    return-object v0
.end method

.method public static a([B)Lcom/oppo/os/a/a/a/a/a/a$af;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9863
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$af;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/os/a/a/a/a/a/a$af;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/lang/Object;
    .locals 0

    .line 9489
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9489
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 9489
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$af;I)I
    .locals 0

    .line 9489
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9489
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;
    .locals 0

    .line 9489
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 9489
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;
    .locals 0

    .line 9489
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/lang/Object;
    .locals 0

    .line 9489
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f()Z
    .locals 1

    .line 9489
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$af;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic g()Z
    .locals 1

    .line 9489
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$af;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic h()Z
    .locals 1

    .line 9489
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$af;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private i()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9657
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->c:Ljava/lang/Object;

    .line 9658
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9659
    check-cast v0, Ljava/lang/String;

    .line 9660
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9662
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->c:Ljava/lang/Object;

    return-object v0

    .line 9665
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private j()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9754
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->j:Ljava/lang/Object;

    .line 9755
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9756
    check-cast v0, Ljava/lang/String;

    .line 9757
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9759
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->j:Ljava/lang/Object;

    return-object v0

    .line 9762
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x0

    .line 9767
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->b:I

    const-string v0, ""

    .line 9768
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->c:Ljava/lang/Object;

    .line 9769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    .line 9770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 9771
    iput-wide v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->e:J

    .line 9772
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->j:Ljava/lang/Object;

    return-void
.end method

.method private l()Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 1

    .line 11903
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    .line 10906
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/oppo/os/a/a/a/a/a/a$af;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 9626
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

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

    .line 9637
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

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

    .line 9723
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

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

    .line 9734
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    const/16 v1, 0x8

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

    .line 16506
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$af;->f:Lcom/oppo/os/a/a/a/a/a/a$af;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 15506
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$af;->f:Lcom/oppo/os/a/a/a/a/a/a$af;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$af;",
            ">;"
        }
    .end annotation

    .line 9618
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$af;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 9810
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9814
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 9815
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->b:I

    .line 9816
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 9818
    :goto_0
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 9820
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->i()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v0

    move v0, v2

    .line 9822
    :goto_1
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/4 v3, 0x3

    .line 9823
    iget-object v4, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    .line 9824
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9826
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v2, v0, :cond_4

    .line 9827
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    .line 9828
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9830
    :cond_4
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    const/4 v0, 0x5

    .line 9831
    iget-wide v2, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->e:J

    .line 9832
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 9834
    :cond_5
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    const/4 v0, 0x6

    .line 9836
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->j()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v1, v0

    .line 9838
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 9839
    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->l:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 9513
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->g:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 9601
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$af;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$af$a;

    .line 9602
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 9776
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 9780
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->k:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13903
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 11913
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$af$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14903
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9489
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->l()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9489
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->l()Lcom/oppo/os/a/a/a/a/a/a$af$a;

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

    .line 9847
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9786
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->getSerializedSize()I

    .line 9787
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 9788
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->b:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9790
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 9791
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->i()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 9793
    :goto_0
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 9794
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9796
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_3

    .line 9797
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9799
    :cond_3
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x5

    .line 9800
    iget-wide v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->e:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9802
    :cond_4
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af;->h:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 9803
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->j()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9805
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
