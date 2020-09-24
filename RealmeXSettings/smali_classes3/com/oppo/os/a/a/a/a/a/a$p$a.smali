.class public final Lcom/oppo/os/a/a/a/a/a/a$p$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$p$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$q;"
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

    .line 6127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 6250
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b:Ljava/lang/Object;

    .line 6314
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c:Ljava/lang/Object;

    .line 6378
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d:Ljava/lang/Object;

    .line 7137
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p;->f()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 6133
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 6250
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b:Ljava/lang/Object;

    .line 6314
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c:Ljava/lang/Object;

    .line 6378
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d:Ljava/lang/Object;

    .line 8137
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p;->f()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 6110
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$p$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6237
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$p;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$p;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6243
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6239
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6240
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 6243
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    .line 6245
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    .line 6198
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$p;

    if-eqz v0, :cond_0

    .line 6199
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$p;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object p1

    return-object p1

    .line 6201
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    .line 10141
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$p$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 2

    .line 6145
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 6146
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b:Ljava/lang/Object;

    .line 6147
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    .line 6148
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c:Ljava/lang/Object;

    .line 6149
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    .line 6150
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d:Ljava/lang/Object;

    .line 6151
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    return-object p0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 2

    .line 8141
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$p$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;-><init>()V

    .line 6156
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    .line 6207
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p;->a()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6208
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6209
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    .line 6210
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$p;->b(Lcom/oppo/os/a/a/a/a/a/a$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b:Ljava/lang/Object;

    .line 6211
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->onChanged()V

    .line 6213
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$p;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6214
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    .line 6215
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$p;->c(Lcom/oppo/os/a/a/a/a/a/a$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c:Ljava/lang/Object;

    .line 6216
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->onChanged()V

    .line 6218
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$p;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6219
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    .line 6220
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$p;->d(Lcom/oppo/os/a/a/a/a/a/a$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d:Ljava/lang/Object;

    .line 6221
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->onChanged()V

    .line 6223
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$p;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 6290
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    .line 6291
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b:Ljava/lang/Object;

    .line 6292
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->onChanged()V

    return-object p0

    .line 6288
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$p;
    .locals 2

    .line 6169
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    .line 6170
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$p;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6171
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 6354
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    .line 6355
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c:Ljava/lang/Object;

    .line 6356
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->onChanged()V

    return-object p0

    .line 6352
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$p;
    .locals 5

    .line 6177
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$p;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 6178
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 6183
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$p;->a(Lcom/oppo/os/a/a/a/a/a/a$p;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 6187
    :cond_1
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$p;->b(Lcom/oppo/os/a/a/a/a/a/a$p;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 6191
    :cond_2
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$p;->c(Lcom/oppo/os/a/a/a/a/a/a$p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6192
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$p;->a(Lcom/oppo/os/a/a/a/a/a/a$p;I)I

    .line 6193
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 6110
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6110
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 6110
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6110
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$p$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 6418
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a:I

    .line 6419
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d:Ljava/lang/Object;

    .line 6420
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->onChanged()V

    return-object p0

    .line 6416
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->d()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->e()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->e()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->e()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->e()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->e()Lcom/oppo/os/a/a/a/a/a/a$p$a;

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

    .line 6110
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->e()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9165
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p;->a()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8165
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p;->a()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6161
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 6121
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$p;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$p$a;

    .line 6122
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

    .line 6110
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6110
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

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

    .line 6110
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

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

    .line 6110
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6110
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

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

    .line 6110
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object p1

    return-object p1
.end method
