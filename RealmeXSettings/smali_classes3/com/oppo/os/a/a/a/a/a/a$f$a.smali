.class public final Lcom/oppo/os/a/a/a/a/a/a$f$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$f$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$g;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/oppo/os/a/a/a/a/a/a$e;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11050
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 11160
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$e;->a:Lcom/oppo/os/a/a/a/a/a/a$e;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    const-string v0, ""

    .line 11187
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c:Ljava/lang/Object;

    .line 12060
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$f;->d()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 11056
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 11160
    sget-object p1, Lcom/oppo/os/a/a/a/a/a/a$e;->a:Lcom/oppo/os/a/a/a/a/a/a$e;

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    const-string p1, ""

    .line 11187
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c:Ljava/lang/Object;

    .line 13060
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$f;->d()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 11033
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$f$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic a()Lcom/oppo/os/a/a/a/a/a/a$f$a;
    .locals 1

    .line 16064
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$f$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;-><init>()V

    return-object v0
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11147
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$f;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$f;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 11153
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/oppo/os/a/a/a/a/a/a$f;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11149
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11150
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 11153
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/oppo/os/a/a/a/a/a/a$f;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    .line 11155
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$f$a;
    .locals 1

    .line 11115
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$f;

    if-eqz v0, :cond_0

    .line 11116
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$f;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/oppo/os/a/a/a/a/a/a$f;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object p1

    return-object p1

    .line 11118
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private a(Lcom/oppo/os/a/a/a/a/a/a$e;)Lcom/oppo/os/a/a/a/a/a/a$f$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 11174
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    .line 11175
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    .line 11176
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->onChanged()V

    return-object p0

    .line 11172
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private b()Lcom/oppo/os/a/a/a/a/a/a$f$a;
    .locals 1

    .line 11068
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 11069
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$e;->a:Lcom/oppo/os/a/a/a/a/a/a$e;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    .line 11070
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    const-string v0, ""

    .line 11071
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c:Ljava/lang/Object;

    .line 11072
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    return-object p0
.end method

.method private c()Lcom/oppo/os/a/a/a/a/a/a$f$a;
    .locals 2

    .line 13064
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$f$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;-><init>()V

    .line 11077
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->e()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/oppo/os/a/a/a/a/a/a$f;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$f;
    .locals 2

    .line 11090
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->e()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v0

    .line 11091
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$f;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 11092
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$f;
    .locals 5

    .line 11098
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$f;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 11099
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 11104
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$f;->a(Lcom/oppo/os/a/a/a/a/a/a$f;Lcom/oppo/os/a/a/a/a/a/a$e;)Lcom/oppo/os/a/a/a/a/a/a$e;

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 11108
    :cond_1
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$f;->a(Lcom/oppo/os/a/a/a/a/a/a$f;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11109
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$f;->a(Lcom/oppo/os/a/a/a/a/a/a$f;I)I

    .line 11110
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->onBuilt()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$f;)Lcom/oppo/os/a/a/a/a/a/a$f$a;
    .locals 1

    .line 11124
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$f;->a()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11125
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13875
    iget-object v0, p1, Lcom/oppo/os/a/a/a/a/a/a$f;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    .line 11126
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/oppo/os/a/a/a/a/a/a$e;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    .line 11128
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11129
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a:I

    .line 11130
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$f;->a(Lcom/oppo/os/a/a/a/a/a/a$f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c:Ljava/lang/Object;

    .line 11131
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->onChanged()V

    .line 11133
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$f;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->d()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->d()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->e()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->e()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->b()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c()Lcom/oppo/os/a/a/a/a/a/a$f$a;

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

    .line 11033
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->c()Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 15086
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$f;->a()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14086
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$f;->a()Lcom/oppo/os/a/a/a/a/a/a$f;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11082
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 11044
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$f;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$f$a;

    .line 11045
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

    .line 11033
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11033
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

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

    .line 11033
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

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

    .line 11033
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11033
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

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

    .line 11033
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$f$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$f$a;

    move-result-object p1

    return-object p1
.end method
