.class public final Lcom/oppo/os/a/a/a/a/a/a$ab$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$ab$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$ac;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2806
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 2940
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->c:Ljava/lang/Object;

    .line 3816
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ab;->f()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 2812
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 2940
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->c:Ljava/lang/Object;

    .line 4816
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ab;->f()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 2789
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2903
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$ab;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$ab;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2909
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/oppo/os/a/a/a/a/a/a$ab;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2905
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$ab;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2906
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 2909
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/oppo/os/a/a/a/a/a/a$ab;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    .line 2911
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;
    .locals 1

    .line 2871
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$ab;

    if-eqz v0, :cond_0

    .line 2872
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$ab;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/oppo/os/a/a/a/a/a/a$ab;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object p1

    return-object p1

    .line 2874
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$ab$a;
    .locals 1

    .line 7820
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$ab$a;
    .locals 1

    .line 2824
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 2825
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->b:I

    .line 2826
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    const-string v0, ""

    .line 2827
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->c:Ljava/lang/Object;

    .line 2828
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    return-object p0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$ab$a;
    .locals 2

    .line 4820
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;-><init>()V

    .line 2833
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/oppo/os/a/a/a/a/a/a$ab;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/oppo/os/a/a/a/a/a/a$ab$a;
    .locals 1

    .line 2927
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    .line 2928
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->b:I

    .line 2929
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->onChanged()V

    return-object p0
.end method

.method public final a(Lcom/oppo/os/a/a/a/a/a/a$ab;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;
    .locals 1

    .line 2880
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ab;->a()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2881
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$ab;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5631
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$ab;->b:I

    .line 2882
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    .line 2884
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$ab;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2885
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    .line 2886
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$ab;->b(Lcom/oppo/os/a/a/a/a/a/a$ab;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->c:Ljava/lang/Object;

    .line 2887
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->onChanged()V

    .line 2889
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$ab;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;
    .locals 1

    .line 2980
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    .line 2981
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->c:Ljava/lang/Object;

    .line 2982
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->onChanged()V

    return-object p0
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$ab;
    .locals 2

    .line 2846
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    .line 2847
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$ab;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2848
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$ab;
    .locals 5

    .line 2854
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$ab;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 2855
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 2860
    :cond_0
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->b:I

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$ab;->a(Lcom/oppo/os/a/a/a/a/a/a$ab;I)I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 2864
    :cond_1
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$ab;->a(Lcom/oppo/os/a/a/a/a/a/a$ab;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$ab;->b(Lcom/oppo/os/a/a/a/a/a/a$ab;I)I

    .line 2866
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2789
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2789
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2789
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2789
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->d()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->d()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->d()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->d()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->e()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->e()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->e()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->e()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->e()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

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

    .line 2789
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->e()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6842
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ab;->a()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5842
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ab;->a()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2838
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 2800
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$ab;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    .line 2801
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

    .line 2789
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2789
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

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

    .line 2789
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

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

    .line 2789
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2789
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

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

    .line 2789
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object p1

    return-object p1
.end method
