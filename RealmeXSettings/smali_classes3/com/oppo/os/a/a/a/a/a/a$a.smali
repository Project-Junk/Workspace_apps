.class public final Lcom/oppo/os/a/a/a/a/a/a$a;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$a$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/oppo/os/a/a/a/a/a/a$a;


# instance fields
.field b:Lcom/oppo/os/a/a/a/a/a/a$x;

.field private final d:Lcom/google/protobuf/UnknownFieldSet;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1892
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$a$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$a$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$a;->a:Lcom/google/protobuf/Parser;

    .line 2499
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$a;-><init>()V

    .line 2500
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$a;->j()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1803
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 2000
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->h:B

    .line 2025
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->i:I

    .line 1803
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1823
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 2000
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->h:B

    .line 2025
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->i:I

    .line 1824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->j()V

    .line 1827
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 1831
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    .line 1837
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$a;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1863
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 1864
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    .line 1865
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1851
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 1852
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 8499
    invoke-static {v3}, Lcom/oppo/os/a/a/a/a/a/a$x;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v3

    .line 1854
    :cond_3
    sget-object v4, Lcom/oppo/os/a/a/a/a/a/a$x;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/oppo/os/a/a/a/a/a/a$x;

    iput-object v4, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    if-eqz v3, :cond_4

    .line 1856
    iget-object v4, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    invoke-virtual {v3, v4}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    .line 1857
    invoke-virtual {v3}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 1859
    :cond_4
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    goto :goto_0

    .line 1844
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 1845
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    .line 1846
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1873
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1874
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1871
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1876
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 1877
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->makeExtensionsImmutable()V

    .line 1878
    throw p1

    .line 1876
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 1877
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1794
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$a;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1800
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 2000
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->h:B

    .line 2025
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->i:I

    .line 1801
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 1794
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$a;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$a;I)I
    .locals 0

    .line 1794
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    return p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 9108
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    .line 2111
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$a;
    .locals 1

    .line 1807
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$a;Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x;
    .locals 0

    .line 1794
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1794
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$a;)Ljava/lang/Object;
    .locals 0

    .line 1794
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1794
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$a;)Ljava/lang/Object;
    .locals 0

    .line 1794
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static e()Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 2108
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .line 1794
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$a;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private h()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1932
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->f:Ljava/lang/Object;

    .line 1933
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1934
    check-cast v0, Ljava/lang/String;

    .line 1935
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1937
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->f:Ljava/lang/Object;

    return-object v0

    .line 1940
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private i()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1983
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->g:Ljava/lang/Object;

    .line 1984
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1985
    check-cast v0, Ljava/lang/String;

    .line 1986
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1988
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->g:Ljava/lang/Object;

    return-object v0

    .line 1991
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private j()V
    .locals 2

    const-string v0, ""

    .line 1996
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->f:Ljava/lang/Object;

    .line 1997
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 1998
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1912
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

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

    .line 1948
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

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

    .line 1963
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 10108
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    .line 9111
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14811
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13811
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$a;",
            ">;"
        }
    .end annotation

    .line 1904
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$a;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 2027
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2031
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->h()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2035
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 2036
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2037
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2039
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 2041
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->i()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2043
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 2044
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->i:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1818
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1887
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$a;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$a$a;

    .line 1888
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2002
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2006
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->h:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12108
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 10118
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$a$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13108
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1794
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1794
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

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

    .line 2052
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

    .line 2012
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->getSerializedSize()I

    .line 2013
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2014
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->h()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2016
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 2017
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2019
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 2020
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->i()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2022
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
