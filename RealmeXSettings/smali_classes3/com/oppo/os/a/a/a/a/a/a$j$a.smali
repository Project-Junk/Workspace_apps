.class public final Lcom/oppo/os/a/a/a/a/a/a$j$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$j$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$k;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14004
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 14112
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$j$b;->a:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    .line 15014
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$j;->e()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 14010
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 14112
    sget-object p1, Lcom/oppo/os/a/a/a/a/a/a$j$b;->a:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    .line 16014
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$j;->e()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 13987
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$j$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic a()Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 1

    .line 19018
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$j$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;-><init>()V

    return-object v0
.end method

.method private a(I)Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 1

    .line 14150
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    .line 14151
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c:I

    .line 14152
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->onChanged()V

    return-object p0
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14099
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$j;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$j;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 14105
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/oppo/os/a/a/a/a/a/a$j;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14101
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14102
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 14105
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/oppo/os/a/a/a/a/a/a$j;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    .line 14107
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 1

    .line 14069
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$j;

    if-eqz v0, :cond_0

    .line 14070
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$j;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/oppo/os/a/a/a/a/a/a$j;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object p1

    return-object p1

    .line 14072
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private a(Lcom/oppo/os/a/a/a/a/a/a$j$b;)Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 14126
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    .line 14127
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    .line 14128
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->onChanged()V

    return-object p0

    .line 14124
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private b()Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 1

    .line 14022
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 14023
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$j$b;->a:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    .line 14024
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    const/4 v0, 0x0

    .line 14025
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c:I

    .line 14026
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    return-object p0
.end method

.method private c()Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 2

    .line 16018
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$j$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;-><init>()V

    .line 14031
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->e()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/oppo/os/a/a/a/a/a/a$j;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$j;
    .locals 2

    .line 14044
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->e()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v0

    .line 14045
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$j;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 14046
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$j;
    .locals 5

    .line 14052
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$j;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 14053
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 14058
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$j;->a(Lcom/oppo/os/a/a/a/a/a/a$j;Lcom/oppo/os/a/a/a/a/a/a$j$b;)Lcom/oppo/os/a/a/a/a/a/a$j$b;

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 14062
    :cond_1
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c:I

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$j;->a(Lcom/oppo/os/a/a/a/a/a/a$j;I)I

    .line 14063
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$j;->b(Lcom/oppo/os/a/a/a/a/a/a$j;I)I

    .line 14064
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->onBuilt()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$j;)Lcom/oppo/os/a/a/a/a/a/a$j$a;
    .locals 1

    .line 14078
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$j;->a()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 14079
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16854
    iget-object v0, p1, Lcom/oppo/os/a/a/a/a/a/a$j;->b:Lcom/oppo/os/a/a/a/a/a/a$j$b;

    .line 14080
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/oppo/os/a/a/a/a/a/a$j$b;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    .line 14082
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$j;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16865
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$j;->c:I

    .line 14083
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    .line 14085
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$j;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->d()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->d()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->e()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->e()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->b()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13987
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->c()Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 18040
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$j;->a()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 17040
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$j;->a()Lcom/oppo/os/a/a/a/a/a/a$j;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14036
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->F()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 13998
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->G()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$j;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$j$a;

    .line 13999
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13987
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 13987
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13987
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13987
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13987
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13987
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$j$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$j$a;

    move-result-object p1

    return-object p1
.end method
