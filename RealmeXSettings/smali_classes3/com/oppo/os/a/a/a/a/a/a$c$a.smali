.class public final Lcom/oppo/os/a/a/a/a/a/a$c$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$c$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$d;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 8244
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c:Ljava/lang/Object;

    .line 9120
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c;->f()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 8116
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 8244
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c:Ljava/lang/Object;

    .line 10120
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c;->f()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 8093
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$c$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8207
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$c;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$c;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8213
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8209
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8210
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 8213
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    .line 8215
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    .line 8175
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$c;

    if-eqz v0, :cond_0

    .line 8176
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$c;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object p1

    return-object p1

    .line 8178
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    .line 13124
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$c$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    .line 8128
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 8129
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->b:I

    .line 8130
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    const-string v0, ""

    .line 8131
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c:Ljava/lang/Object;

    .line 8132
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    return-object p0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 2

    .line 10124
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$c$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;-><init>()V

    .line 8137
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->b()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    .line 8231
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    .line 8232
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->b:I

    .line 8233
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->onChanged()V

    return-object p0
.end method

.method public final a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    .line 8184
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c;->a()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8185
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10935
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$c;->b:I

    .line 8186
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    .line 8188
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8189
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    .line 8190
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$c;->b(Lcom/oppo/os/a/a/a/a/a/a$c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c:Ljava/lang/Object;

    .line 8191
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->onChanged()V

    .line 8193
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$c;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$c$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 8284
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    .line 8285
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c:Ljava/lang/Object;

    .line 8286
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->onChanged()V

    return-object p0

    .line 8282
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$c;
    .locals 2

    .line 8150
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->b()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    .line 8151
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$c;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8152
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$c;
    .locals 5

    .line 8158
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$c;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 8159
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 8164
    :cond_0
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->b:I

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$c;->a(Lcom/oppo/os/a/a/a/a/a/a$c;I)I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 8168
    :cond_1
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$c$a;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$c;->a(Lcom/oppo/os/a/a/a/a/a/a$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8169
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$c;->b(Lcom/oppo/os/a/a/a/a/a/a$c;I)I

    .line 8170
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 8093
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8093
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 8093
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->b()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8093
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->b()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->d()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->d()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->d()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->d()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

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

    .line 8093
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 12146
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c;->a()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11146
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c;->a()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8142
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->r()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 8104
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$c;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$c$a;

    .line 8105
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

    .line 8093
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8093
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

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

    .line 8093
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

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

    .line 8093
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8093
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

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

    .line 8093
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object p1

    return-object p1
.end method