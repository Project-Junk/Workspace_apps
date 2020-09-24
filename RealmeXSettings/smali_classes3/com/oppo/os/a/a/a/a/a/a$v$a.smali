.class public final Lcom/oppo/os/a/a/a/a/a/a$v$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$v$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$w;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6841
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 6964
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b:Ljava/lang/Object;

    .line 7028
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c:Ljava/lang/Object;

    .line 7092
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d:Ljava/lang/Object;

    .line 7851
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v;->g()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 6847
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 6964
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b:Ljava/lang/Object;

    .line 7028
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c:Ljava/lang/Object;

    .line 7092
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d:Ljava/lang/Object;

    .line 8851
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v;->g()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 6824
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$v$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6951
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$v;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$v;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6957
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6953
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6954
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 6957
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    .line 6959
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    .line 6912
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$v;

    if-eqz v0, :cond_0

    .line 6913
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$v;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object p1

    return-object p1

    .line 6915
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    .line 10855
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$v$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 2

    .line 6859
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 6860
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b:Ljava/lang/Object;

    .line 6861
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    .line 6862
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c:Ljava/lang/Object;

    .line 6863
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    .line 6864
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d:Ljava/lang/Object;

    .line 6865
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    return-object p0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 2

    .line 8855
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$v$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;-><init>()V

    .line 6870
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    .line 6921
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v;->a()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6922
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$v;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6923
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    .line 6924
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$v;->b(Lcom/oppo/os/a/a/a/a/a/a$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b:Ljava/lang/Object;

    .line 6925
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->onChanged()V

    .line 6927
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$v;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6928
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    .line 6929
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$v;->c(Lcom/oppo/os/a/a/a/a/a/a$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c:Ljava/lang/Object;

    .line 6930
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->onChanged()V

    .line 6932
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$v;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6933
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    .line 6934
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$v;->d(Lcom/oppo/os/a/a/a/a/a/a$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d:Ljava/lang/Object;

    .line 6935
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->onChanged()V

    .line 6937
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$v;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 7004
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    .line 7005
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b:Ljava/lang/Object;

    .line 7006
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->onChanged()V

    return-object p0

    .line 7002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$v;
    .locals 2

    .line 6883
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    .line 6884
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$v;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6885
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 7068
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    .line 7069
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c:Ljava/lang/Object;

    .line 7070
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->onChanged()V

    return-object p0

    .line 7066
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$v;
    .locals 5

    .line 6891
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$v;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 6892
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 6897
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$v;->a(Lcom/oppo/os/a/a/a/a/a/a$v;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 6901
    :cond_1
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$v;->b(Lcom/oppo/os/a/a/a/a/a/a$v;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 6905
    :cond_2
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$v;->c(Lcom/oppo/os/a/a/a/a/a/a$v;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6906
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$v;->a(Lcom/oppo/os/a/a/a/a/a/a$v;I)I

    .line 6907
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 6824
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6824
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 6824
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6824
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$v$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 7132
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a:I

    .line 7133
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d:Ljava/lang/Object;

    .line 7134
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->onChanged()V

    return-object p0

    .line 7130
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->d()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->e()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->e()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->e()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->e()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->e()Lcom/oppo/os/a/a/a/a/a/a$v$a;

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

    .line 6824
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->e()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9879
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v;->a()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8879
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v;->a()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6875
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 6835
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$v;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$v$a;

    .line 6836
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

    .line 6824
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6824
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

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

    .line 6824
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

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

    .line 6824
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6824
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

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

    .line 6824
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object p1

    return-object p1
.end method
