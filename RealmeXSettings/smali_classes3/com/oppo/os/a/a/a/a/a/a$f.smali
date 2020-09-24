.class public final Lcom/oppo/os/a/a/a/a/a/a$f;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$f$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/oppo/os/a/a/a/a/a/a$f;


# instance fields
.field b:Lcom/oppo/os/a/a/a/a/a/a$e;

.field private final d:Lcom/google/protobuf/UnknownFieldSet;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10851
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$f$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$f$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$f;->a:Lcom/google/protobuf/Parser;

    .line 11255
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$f;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$f;-><init>()V

    .line 11256
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$f;->c:Lcom/oppo/os/a/a/a/a/a/a$f;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$f;->f()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10770
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 10918
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->g:B

    .line 10940
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->h:I

    .line 10770
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10790
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 10918
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->g:B

    .line 10940
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->h:I

    .line 10791
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->f()V

    .line 10794
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 10798
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 10804
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$f;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 10822
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 10823
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    .line 10824
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->f:Ljava/lang/Object;

    goto :goto_0

    .line 10811
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 10812
    invoke-static {v3}, Lcom/oppo/os/a/a/a/a/a/a$e;->a(I)Lcom/oppo/os/a/a/a/a/a/a$e;

    move-result-object v4

    if-nez v4, :cond_3

    .line 10814
    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 10816
    :cond_3
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    .line 10817
    iput-object v4, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->b:Lcom/oppo/os/a/a/a/a/a/a$e;
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

    .line 10832
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 10833
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 10830
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10835
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 10836
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->makeExtensionsImmutable()V

    .line 10837
    throw p1

    .line 10835
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 10836
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10761
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$f;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 10767
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 10918
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->g:B

    .line 10940
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->h:I

    .line 10768
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 10761
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$f;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$f;I)I
    .locals 0

    .line 10761
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$f;Lcom/oppo/os/a/a/a/a/a/a$e;)Lcom/oppo/os/a/a/a/a/a/a$e;
    .locals 0

    .line 10761
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    return-object p1
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$f;
    .locals 1

    .line 10774
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$f;->c:Lcom/oppo/os/a/a/a/a/a/a$f;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$f;)Ljava/lang/Object;
    .locals 0

    .line 10761
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10761
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d()Z
    .locals 1

    .line 10761
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$f;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private e()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10902
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->f:Ljava/lang/Object;

    .line 10903
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10904
    check-cast v0, Ljava/lang/String;

    .line 10905
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10907
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->f:Ljava/lang/Object;

    return-object v0

    .line 10910
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private f()V
    .locals 1

    .line 10915
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$e;->a:Lcom/oppo/os/a/a/a/a/a/a$e;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    const-string v0, ""

    .line 10916
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->f:Ljava/lang/Object;

    return-void
.end method

.method private g()Lcom/oppo/os/a/a/a/a/a/a$f$a;
    .locals 1

    .line 13019
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    .line 12022
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/oppo/os/a/a/a/a/a/a$f;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 10871
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

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

    .line 10882
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

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

    .line 17778
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$f;->c:Lcom/oppo/os/a/a/a/a/a/a$f;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 16778
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$f;->c:Lcom/oppo/os/a/a/a/a/a/a$f;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$f;",
            ">;"
        }
    .end annotation

    .line 10863
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$f;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 10942
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10946
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 10947
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    .line 10948
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$e;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 10950
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 10952
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->e()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 10954
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 10955
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->h:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 10785
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 10846
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$f;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$f$a;

    .line 10847
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 10920
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 10924
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->g:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 15019
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 13029
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$f$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 16019
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10761
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->g()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10761
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->g()Lcom/oppo/os/a/a/a/a/a/a$f$a;

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

    .line 10963
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

    .line 10930
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->getSerializedSize()I

    .line 10931
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 10932
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$e;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10934
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 10935
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->e()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10937
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$f;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
