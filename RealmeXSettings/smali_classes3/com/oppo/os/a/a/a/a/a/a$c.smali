.class public final Lcom/oppo/os/a/a/a/a/a/a$c;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$c$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/oppo/os/a/a/a/a/a/a$c;


# instance fields
.field b:I

.field private final d:Lcom/google/protobuf/UnknownFieldSet;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7911
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$c$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$c$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$c;->a:Lcom/google/protobuf/Parser;

    .line 8312
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$c;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$c;-><init>()V

    .line 8313
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$c;->c:Lcom/oppo/os/a/a/a/a/a/a$c;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$c;->h()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7836
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 7978
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->g:B

    .line 8000
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->h:I

    .line 7836
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7856
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 7978
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->g:B

    .line 8000
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->h:I

    .line 7857
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->h()V

    .line 7860
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 7864
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 7870
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$c;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 7882
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 7883
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    .line 7884
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 7877
    :cond_2
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    .line 7878
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7892
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 7893
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7890
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7895
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 7896
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->makeExtensionsImmutable()V

    .line 7897
    throw p1

    .line 7895
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 7896
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7827
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$c;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 7833
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 7978
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->g:B

    .line 8000
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->h:I

    .line 7834
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 7827
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$c;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$c;I)I
    .locals 0

    .line 7827
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->b:I

    return p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    .line 9079
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    .line 8082
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$c;
    .locals 1

    .line 7840
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$c;->c:Lcom/oppo/os/a/a/a/a/a/a$c;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7827
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$c;I)I
    .locals 0

    .line 7827
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$c;)Ljava/lang/Object;
    .locals 0

    .line 7827
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static d()Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    .line 8079
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .line 7827
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$c;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private g()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7962
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->f:Ljava/lang/Object;

    .line 7963
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7964
    check-cast v0, Ljava/lang/String;

    .line 7965
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7967
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->f:Ljava/lang/Object;

    return-object v0

    .line 7970
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    .line 7975
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->b:I

    const-string v0, ""

    .line 7976
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 7931
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

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

    .line 7942
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    .line 10079
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    .line 9082
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14844
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$c;->c:Lcom/oppo/os/a/a/a/a/a/a$c;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13844
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$c;->c:Lcom/oppo/os/a/a/a/a/a/a$c;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$c;",
            ">;"
        }
    .end annotation

    .line 7923
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$c;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 8002
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 8006
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 8007
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->b:I

    .line 8008
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 8010
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 8012
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->g()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 8014
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 8015
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->h:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 7851
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 7906
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$c;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$c$a;

    .line 7907
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7980
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7984
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->g:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12079
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 10089
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$c$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13079
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7827
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7827
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

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

    .line 8023
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

    .line 7990
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->getSerializedSize()I

    .line 7991
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 7992
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->b:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7994
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7995
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->g()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7997
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
