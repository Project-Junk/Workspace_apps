.class public final Lcom/oppo/os/a/a/a/a/a/a$t$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$t$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$u;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8718
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 8828
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const-string v0, ""

    .line 8855
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c:Ljava/lang/Object;

    .line 9728
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t;->f()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 8724
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 8828
    sget-object p1, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const-string p1, ""

    .line 8855
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c:Ljava/lang/Object;

    .line 10728
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t;->f()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 8701
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$t$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8815
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$t;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$t;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8821
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8817
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8818
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 8821
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    .line 8823
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    .line 8783
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$t;

    if-eqz v0, :cond_0

    .line 8784
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$t;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object p1

    return-object p1

    .line 8786
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    .line 13732
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    .line 8736
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8737
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8738
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    const-string v0, ""

    .line 8739
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c:Ljava/lang/Object;

    .line 8740
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    return-object p0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 2

    .line 10732
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;-><init>()V

    .line 8745
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$t$b;)Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 8842
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    .line 8843
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8844
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->onChanged()V

    return-object p0

    .line 8840
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    .line 8792
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t;->a()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8793
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11543
    iget-object v0, p1, Lcom/oppo/os/a/a/a/a/a/a$t;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 8794
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t$b;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    .line 8796
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$t;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8797
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    .line 8798
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$t;->b(Lcom/oppo/os/a/a/a/a/a/a$t;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c:Ljava/lang/Object;

    .line 8799
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->onChanged()V

    .line 8801
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$t;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$t$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 8895
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    .line 8896
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c:Ljava/lang/Object;

    .line 8897
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->onChanged()V

    return-object p0

    .line 8893
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$t;
    .locals 2

    .line 8758
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    .line 8759
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$t;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8760
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$t;
    .locals 5

    .line 8766
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$t;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 8767
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 8772
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$t;->a(Lcom/oppo/os/a/a/a/a/a/a$t;Lcom/oppo/os/a/a/a/a/a/a$t$b;)Lcom/oppo/os/a/a/a/a/a/a$t$b;

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 8776
    :cond_1
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$t$a;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$t;->a(Lcom/oppo/os/a/a/a/a/a/a$t;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8777
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$t;->a(Lcom/oppo/os/a/a/a/a/a/a$t;I)I

    .line 8778
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 8701
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8701
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 8701
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8701
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->d()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->d()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->d()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->d()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->e()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->e()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->e()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->e()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->e()Lcom/oppo/os/a/a/a/a/a/a$t$a;

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

    .line 8701
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->e()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 12754
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t;->a()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11754
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t;->a()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8750
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->t()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 8712
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->u()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$t;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$t$a;

    .line 8713
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

    .line 8701
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8701
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

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

    .line 8701
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

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

    .line 8701
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8701
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

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

    .line 8701
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object p1

    return-object p1
.end method
