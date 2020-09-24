.class public final Lcom/oppo/os/a/a/a/a/a/a$z;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$z$a;,
        Lcom/oppo/os/a/a/a/a/a/a$z$b;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$z;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/oppo/os/a/a/a/a/a/a$z;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$h;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/protobuf/UnknownFieldSet;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11437
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$z$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$z;->a:Lcom/google/protobuf/Parser;

    .line 12554
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$z;-><init>()V

    .line 12555
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$z;->e:Lcom/oppo/os/a/a/a/a/a/a$z;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$z;->n()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11327
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 11718
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->k:B

    .line 11752
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->l:I

    .line 11327
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->f:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 11718
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->k:B

    .line 11752
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->l:I

    .line 11348
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->n()V

    .line 11351
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    const/16 v4, 0x10

    if-nez v1, :cond_b

    .line 11355
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v6, 0xa

    if-eq v5, v6, :cond_8

    const/16 v6, 0x12

    if-eq v5, v6, :cond_7

    const/16 v6, 0x18

    if-eq v5, v6, :cond_5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_2

    const/16 v6, 0x32

    if-eq v5, v6, :cond_1

    .line 11361
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/oppo/os/a/a/a/a/a/a$z;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 11405
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11406
    iget v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    or-int/2addr v6, v4

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    .line 11407
    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->j:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    and-int/lit8 v5, v3, 0x10

    if-eq v5, v4, :cond_3

    .line 11398
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 11401
    :cond_3
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    sget-object v6, Lcom/oppo/os/a/a/a/a/a/a$h;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11391
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11392
    iget v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    .line 11393
    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->i:Ljava/lang/Object;

    goto :goto_0

    .line 11380
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 11381
    invoke-static {v5}, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a(I)Lcom/oppo/os/a/a/a/a/a/a$z$b;

    move-result-object v6

    if-nez v6, :cond_6

    const/4 v6, 0x3

    .line 11383
    invoke-virtual {v0, v6, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 11385
    :cond_6
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    .line 11386
    iput-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    goto :goto_0

    .line 11374
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11375
    iget v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    .line 11376
    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->b:Ljava/lang/Object;

    goto :goto_0

    .line 11368
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11369
    iget v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    .line 11370
    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->h:Ljava/lang/Object;
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

    .line 11415
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 11416
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11413
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x10

    if-ne p2, v4, :cond_a

    .line 11419
    iget-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    .line 11421
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->f:Lcom/google/protobuf/UnknownFieldSet;

    .line 11422
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->makeExtensionsImmutable()V

    .line 11423
    throw p1

    :cond_b
    and-int/lit8 p1, v3, 0x10

    if-ne p1, v4, :cond_c

    .line 11419
    iget-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    .line 11421
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->f:Lcom/google/protobuf/UnknownFieldSet;

    .line 11422
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11318
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$z;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 11324
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 11718
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->k:B

    .line 11752
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->l:I

    .line 11325
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->f:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 11318
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$z;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$z;I)I
    .locals 0

    .line 11318
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$z;Lcom/oppo/os/a/a/a/a/a/a$z$b;)Lcom/oppo/os/a/a/a/a/a/a$z$b;
    .locals 0

    .line 11318
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    return-object p1
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$z;
    .locals 1

    .line 11331
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$z;->e:Lcom/oppo/os/a/a/a/a/a/a$z;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/lang/Object;
    .locals 0

    .line 11318
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11318
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 11318
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    return-object p1
.end method

.method public static final b()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11427
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->B()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/lang/Object;
    .locals 0

    .line 11318
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11318
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->b:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/lang/Object;
    .locals 0

    .line 11318
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11318
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11318
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/util/List;
    .locals 0

    .line 11318
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/lang/Object;
    .locals 0

    .line 11318
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h()Z
    .locals 1

    .line 11318
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$z;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic i()Z
    .locals 1

    .line 11318
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$z;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private j()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11554
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->h:Ljava/lang/Object;

    .line 11555
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11556
    check-cast v0, Ljava/lang/String;

    .line 11557
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11559
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->h:Ljava/lang/Object;

    return-object v0

    .line 11562
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private k()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11590
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->b:Ljava/lang/Object;

    .line 11591
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11592
    check-cast v0, Ljava/lang/String;

    .line 11593
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11595
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->b:Ljava/lang/Object;

    return-object v0

    .line 11598
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private l()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11637
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->i:Ljava/lang/Object;

    .line 11638
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11639
    check-cast v0, Ljava/lang/String;

    .line 11640
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11642
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->i:Ljava/lang/Object;

    return-object v0

    .line 11645
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private m()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11698
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->j:Ljava/lang/Object;

    .line 11699
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11700
    check-cast v0, Ljava/lang/String;

    .line 11701
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11703
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->j:Ljava/lang/Object;

    return-object v0

    .line 11706
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private n()V
    .locals 2

    const-string v0, ""

    .line 11711
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->h:Ljava/lang/Object;

    .line 11712
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->b:Ljava/lang/Object;

    .line 11713
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 11714
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->i:Ljava/lang/Object;

    .line 11715
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    .line 11716
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->j:Ljava/lang/Object;

    return-void
.end method

.method private o()Lcom/oppo/os/a/a/a/a/a/a$z$a;
    .locals 1

    .line 13847
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    .line 12850
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/oppo/os/a/a/a/a/a/a$z;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 11534
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

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

    .line 11570
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/4 v1, 0x2

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

    .line 11606
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/4 v1, 0x4

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

    .line 11617
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/16 v1, 0x8

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

    .line 11678
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/16 v1, 0x10

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

    .line 18335
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$z;->e:Lcom/oppo/os/a/a/a/a/a/a$z;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 17335
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$z;->e:Lcom/oppo/os/a/a/a/a/a/a$z;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$z;",
            ">;"
        }
    .end annotation

    .line 11449
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$z;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 11754
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 11758
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 11760
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->j()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 11762
    :goto_0
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 11764
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->k()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11766
    :cond_2
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 11767
    iget-object v4, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 11768
    invoke-virtual {v4}, Lcom/oppo/os/a/a/a/a/a/a$z$b;->getNumber()I

    move-result v4

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11770
    :cond_3
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 11772
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->l()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11774
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    const/4 v1, 0x5

    .line 11775
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    .line 11776
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11778
    :cond_5
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 11780
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->m()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11782
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11783
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->l:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 11342
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->f:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 11432
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->C()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$z;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$z$a;

    .line 11433
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 11720
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 11724
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->k:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 15847
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 13857
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$z$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 16847
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11318
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->o()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11318
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->o()Lcom/oppo/os/a/a/a/a/a/a$z$a;

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

    .line 11791
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

    .line 11730
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->getSerializedSize()I

    .line 11731
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 11732
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->j()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11734
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 11735
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->k()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11737
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 11738
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    invoke-virtual {v2}, Lcom/oppo/os/a/a/a/a/a/a$z$b;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11740
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 11741
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->l()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    const/4 v0, 0x0

    .line 11743
    :goto_0
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 11744
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11746
    :cond_4
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z;->g:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 11747
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->m()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11749
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
