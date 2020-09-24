.class public final Lcom/oppo/os/a/a/a/a/a/a$p;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$p$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$p;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/oppo/os/a/a/a/a/a/a$p;


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

    .line 5859
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$p$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$p$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$p;->a:Lcom/google/protobuf/Parser;

    .line 6446
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$p;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$p;-><init>()V

    .line 6447
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$p;->b:Lcom/oppo/os/a/a/a/a/a/a$p;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$p;->j()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5777
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 5988
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->h:B

    .line 6013
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->i:I

    .line 5777
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5797
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 5988
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->h:B

    .line 6013
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->i:I

    .line 5798
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->j()V

    .line 5801
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 5805
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

    .line 5811
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$p;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5830
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 5831
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    .line 5832
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->g:Ljava/lang/Object;

    goto :goto_0

    .line 5824
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 5825
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    .line 5826
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->f:Ljava/lang/Object;

    goto :goto_0

    .line 5818
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 5819
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    .line 5820
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->e:Ljava/lang/Object;
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

    .line 5840
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 5841
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5838
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5843
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 5844
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->makeExtensionsImmutable()V

    .line 5845
    throw p1

    .line 5843
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 5844
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5768
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$p;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5774
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 5988
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->h:B

    .line 6013
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->i:I

    .line 5775
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 5768
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$p;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$p;I)I
    .locals 0

    .line 5768
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    return p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    .line 7096
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    .line 6099
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$p;
    .locals 1

    .line 5781
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$p;->b:Lcom/oppo/os/a/a/a/a/a/a$p;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5768
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$p;)Ljava/lang/Object;
    .locals 0

    .line 5768
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5768
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$p;)Ljava/lang/Object;
    .locals 0

    .line 5768
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5768
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/oppo/os/a/a/a/a/a/a$p;)Ljava/lang/Object;
    .locals 0

    .line 5768
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static e()Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    .line 6096
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .line 5768
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$p;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private g()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5899
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->e:Ljava/lang/Object;

    .line 5900
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5901
    check-cast v0, Ljava/lang/String;

    .line 5902
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5904
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->e:Ljava/lang/Object;

    return-object v0

    .line 5907
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private h()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5935
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->f:Ljava/lang/Object;

    .line 5936
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5937
    check-cast v0, Ljava/lang/String;

    .line 5938
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5940
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->f:Ljava/lang/Object;

    return-object v0

    .line 5943
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private i()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5971
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->g:Ljava/lang/Object;

    .line 5972
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5973
    check-cast v0, Ljava/lang/String;

    .line 5974
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5976
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->g:Ljava/lang/Object;

    return-object v0

    .line 5979
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private j()V
    .locals 1

    const-string v0, ""

    .line 5984
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->e:Ljava/lang/Object;

    .line 5985
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->f:Ljava/lang/Object;

    .line 5986
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->g:Ljava/lang/Object;

    return-void
.end method

.method private k()Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    .line 8096
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    .line 7099
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 5879
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

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

    .line 5915
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

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

    .line 5951
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    const/4 v1, 0x4

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

    .line 12785
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$p;->b:Lcom/oppo/os/a/a/a/a/a/a$p;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11785
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$p;->b:Lcom/oppo/os/a/a/a/a/a/a$p;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$p;",
            ">;"
        }
    .end annotation

    .line 5871
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$p;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 6015
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 6019
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 6021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->g()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 6023
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 6025
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->h()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 6027
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 6029
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->i()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 6031
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 6032
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->i:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5792
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 5854
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$p;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$p$a;

    .line 5855
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5990
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5994
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->h:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10096
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 8106
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$p$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11096
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5768
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->k()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5768
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->k()Lcom/oppo/os/a/a/a/a/a/a$p$a;

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

    .line 6040
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

    .line 6000
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->getSerializedSize()I

    .line 6001
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 6002
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->g()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6004
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 6005
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->h()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6007
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6008
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->i()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6010
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
