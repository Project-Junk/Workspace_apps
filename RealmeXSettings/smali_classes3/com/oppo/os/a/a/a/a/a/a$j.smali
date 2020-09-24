.class public final Lcom/oppo/os/a/a/a/a/a/a$j;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$j$a;,
        Lcom/oppo/os/a/a/a/a/a/a$j$b;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$j;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/oppo/os/a/a/a/a/a/a$j;


# instance fields
.field b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

.field c:I

.field private final e:Lcom/google/protobuf/UnknownFieldSet;

.field private f:I

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13753
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$j$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$j$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$j;->a:Lcom/google/protobuf/Parser;

    .line 14167
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$j;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$j;-><init>()V

    .line 14168
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$j;->d:Lcom/oppo/os/a/a/a/a/a/a$j;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$j;->f()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13673
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 13872
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->g:B

    .line 13894
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->h:I

    .line 13673
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->e:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13693
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 13872
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->g:B

    .line 13894
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->h:I

    .line 13694
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j;->f()V

    .line 13697
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 13701
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 13707
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$j;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 13725
    :cond_1
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    .line 13726
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->c:I

    goto :goto_0

    .line 13714
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 13715
    invoke-static {v3}, Lcom/oppo/os/a/a/a/a/a/a$j$b;->a(I)Lcom/oppo/os/a/a/a/a/a/a$j$b;

    move-result-object v4

    if-nez v4, :cond_3

    .line 13717
    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 13719
    :cond_3
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    .line 13720
    iput-object v4, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;
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

    .line 13734
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 13735
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 13732
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13737
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->e:Lcom/google/protobuf/UnknownFieldSet;

    .line 13738
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$j;->makeExtensionsImmutable()V

    .line 13739
    throw p1

    .line 13737
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->e:Lcom/google/protobuf/UnknownFieldSet;

    .line 13738
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$j;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13664
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$j;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 13670
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 13872
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->g:B

    .line 13894
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->h:I

    .line 13671
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->e:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 13664
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$j;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$j;I)I
    .locals 0

    .line 13664
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->c:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$j;Lcom/oppo/os/a/a/a/a/a/a$j$b;)Lcom/oppo/os/a/a/a/a/a/a$j$b;
    .locals 0

    .line 13664
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    return-object p1
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$j;
    .locals 1

    .line 13677
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$j;->d:Lcom/oppo/os/a/a/a/a/a/a$j;

    return-object v0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$j;I)I
    .locals 0

    .line 13664
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    return p1
.end method

.method public static final b()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 13743
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->F()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    .line 13664
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$j;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private f()V
    .locals 1

    .line 13869
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$j$b;->a:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    const/4 v0, 0x0

    .line 13870
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->c:I

    return-void
.end method

.method private g()Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 1

    .line 15973
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    .line 14976
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/oppo/os/a/a/a/a/a/a$j;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 13850
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

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

    .line 13861
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

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

    .line 20681
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$j;->d:Lcom/oppo/os/a/a/a/a/a/a$j;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 19681
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$j;->d:Lcom/oppo/os/a/a/a/a/a/a$j;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$j;",
            ">;"
        }
    .end annotation

    .line 13765
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$j;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 13896
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 13900
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 13901
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    .line 13902
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$j$b;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 13904
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 13905
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->c:I

    .line 13906
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 13908
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$j;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 13909
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->h:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 13688
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->e:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 13748
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->G()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$j;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$j$a;

    .line 13749
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 13874
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 13878
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->g:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 17973
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 15983
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$j$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 18973
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13664
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j;->g()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13664
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j;->g()Lcom/oppo/os/a/a/a/a/a/a$j$a;

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

    .line 13917
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

    .line 13884
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$j;->getSerializedSize()I

    .line 13885
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 13886
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$j$b;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13888
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 13889
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13891
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$j;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
