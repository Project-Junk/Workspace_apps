.class public final Lcom/oppo/os/a/a/a/a/a/a$x$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$x$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$y;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7525
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 7646
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b:Ljava/lang/Object;

    .line 7710
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c:Ljava/lang/Object;

    .line 8535
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->f()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 7531
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 7646
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b:Ljava/lang/Object;

    .line 7710
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c:Ljava/lang/Object;

    .line 9535
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->f()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 7508
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7633
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$x;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$x;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7639
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7635
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$x;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7636
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 7639
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    .line 7641
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    .line 7596
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$x;

    if-eqz v0, :cond_0

    .line 7597
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$x;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object p1

    return-object p1

    .line 7599
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    .line 12539
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$x$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 2

    .line 7543
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 7544
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b:Ljava/lang/Object;

    .line 7545
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    .line 7546
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c:Ljava/lang/Object;

    .line 7547
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    const/4 v0, 0x0

    .line 7548
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->d:I

    .line 7549
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    return-object p0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 2

    .line 9539
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$x$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;-><init>()V

    .line 7554
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    .line 7785
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    .line 7786
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->d:I

    .line 7787
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->onChanged()V

    return-object p0
.end method

.method public final a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    .line 7605
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7606
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$x;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7607
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    .line 7608
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$x;->b(Lcom/oppo/os/a/a/a/a/a/a$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b:Ljava/lang/Object;

    .line 7609
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->onChanged()V

    .line 7611
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$x;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7612
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    .line 7613
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$x;->c(Lcom/oppo/os/a/a/a/a/a/a$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c:Ljava/lang/Object;

    .line 7614
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->onChanged()V

    .line 7616
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$x;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10378
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$x;->b:I

    .line 7617
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    .line 7619
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$x;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 7686
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    .line 7687
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b:Ljava/lang/Object;

    .line 7688
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->onChanged()V

    return-object p0

    .line 7684
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$x;
    .locals 2

    .line 7567
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    .line 7568
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$x;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7569
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 7750
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    .line 7751
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c:Ljava/lang/Object;

    .line 7752
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->onChanged()V

    return-object p0

    .line 7748
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$x;
    .locals 5

    .line 7575
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$x;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 7576
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 7581
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$x;->a(Lcom/oppo/os/a/a/a/a/a/a$x;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 7585
    :cond_1
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$x;->b(Lcom/oppo/os/a/a/a/a/a/a$x;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 7589
    :cond_2
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$x$a;->d:I

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$x;->a(Lcom/oppo/os/a/a/a/a/a/a$x;I)I

    .line 7590
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$x;->b(Lcom/oppo/os/a/a/a/a/a/a$x;I)I

    .line 7591
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 7508
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7508
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 7508
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7508
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->d()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->d()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->d()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->d()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->e()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->e()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->e()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->e()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->e()Lcom/oppo/os/a/a/a/a/a/a$x$a;

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

    .line 7508
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->e()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 11563
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10563
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7559
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 7519
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$x;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$x$a;

    .line 7520
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

    .line 7508
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7508
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

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

    .line 7508
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

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

    .line 7508
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7508
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

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

    .line 7508
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object p1

    return-object p1
.end method
