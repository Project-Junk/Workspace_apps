.class public final Lcom/oppo/os/a/a/a/a/a/a$l$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$l$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$m;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5038
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 5216
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b:Ljava/lang/Object;

    .line 5280
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c:Ljava/lang/Object;

    .line 5344
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d:Ljava/lang/Object;

    .line 5408
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e:Ljava/lang/Object;

    .line 5472
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->f:Ljava/lang/Object;

    .line 5536
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->g:Ljava/lang/Object;

    .line 5600
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->h:Ljava/lang/Object;

    .line 5664
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->i:Ljava/lang/Object;

    .line 6048
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l;->l()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5044
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 5216
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b:Ljava/lang/Object;

    .line 5280
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c:Ljava/lang/Object;

    .line 5344
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d:Ljava/lang/Object;

    .line 5408
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e:Ljava/lang/Object;

    .line 5472
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->f:Ljava/lang/Object;

    .line 5536
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->g:Ljava/lang/Object;

    .line 5600
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->h:Ljava/lang/Object;

    .line 5664
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->i:Ljava/lang/Object;

    .line 7048
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l;->l()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 5021
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$l$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5203
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$l;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$l;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5209
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5205
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5206
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5209
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    .line 5211
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    .line 5139
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$l;

    if-eqz v0, :cond_0

    .line 5140
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$l;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object p1

    return-object p1

    .line 5142
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    .line 9052
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$l$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 2

    .line 5056
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 5057
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b:Ljava/lang/Object;

    .line 5058
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5059
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c:Ljava/lang/Object;

    .line 5060
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5061
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d:Ljava/lang/Object;

    .line 5062
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5063
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e:Ljava/lang/Object;

    .line 5064
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5065
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->f:Ljava/lang/Object;

    .line 5066
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5067
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->g:Ljava/lang/Object;

    .line 5068
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5069
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->h:Ljava/lang/Object;

    .line 5070
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5071
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->i:Ljava/lang/Object;

    .line 5072
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    return-object p0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 2

    .line 7052
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$l$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;-><init>()V

    .line 5077
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    .line 5148
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l;->a()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5149
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5150
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5151
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->b(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b:Ljava/lang/Object;

    .line 5152
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    .line 5154
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5155
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5156
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->c(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c:Ljava/lang/Object;

    .line 5157
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    .line 5159
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5160
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5161
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->d(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d:Ljava/lang/Object;

    .line 5162
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    .line 5164
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5165
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5166
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->e(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e:Ljava/lang/Object;

    .line 5167
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    .line 5169
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5170
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5171
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->f(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->f:Ljava/lang/Object;

    .line 5172
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    .line 5174
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5175
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5176
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->g(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->g:Ljava/lang/Object;

    .line 5177
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    .line 5179
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5180
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5181
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->h(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->h:Ljava/lang/Object;

    .line 5182
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    .line 5184
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5185
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5186
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->i(Lcom/oppo/os/a/a/a/a/a/a$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->i:Ljava/lang/Object;

    .line 5187
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    .line 5189
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$l;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5256
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5257
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b:Ljava/lang/Object;

    .line 5258
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    return-object p0

    .line 5254
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$l;
    .locals 2

    .line 5090
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    .line 5091
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$l;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5092
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5320
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5321
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c:Ljava/lang/Object;

    .line 5322
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    return-object p0

    .line 5318
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$l;
    .locals 5

    .line 5098
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$l;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 5099
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 5104
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->a(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 5108
    :cond_1
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->b(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 5112
    :cond_2
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->c(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    or-int/lit8 v1, v1, 0x8

    .line 5116
    :cond_3
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->d(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    or-int/lit8 v1, v1, 0x10

    .line 5120
    :cond_4
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->f:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->e(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    or-int/lit8 v1, v1, 0x20

    .line 5124
    :cond_5
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->g:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->f(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    or-int/lit8 v1, v1, 0x40

    .line 5128
    :cond_6
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->h:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->g(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    or-int/lit16 v1, v1, 0x80

    .line 5132
    :cond_7
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->i:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$l;->h(Lcom/oppo/os/a/a/a/a/a/a$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5133
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$l;->a(Lcom/oppo/os/a/a/a/a/a/a$l;I)I

    .line 5134
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5021
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5021
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5021
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5021
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5384
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5385
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d:Ljava/lang/Object;

    .line 5386
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    return-object p0

    .line 5382
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e()Lcom/oppo/os/a/a/a/a/a/a$l$a;

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

    .line 5021
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5448
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5449
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e:Ljava/lang/Object;

    .line 5450
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    return-object p0

    .line 5446
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final e(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5512
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5513
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->f:Ljava/lang/Object;

    .line 5514
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    return-object p0

    .line 5510
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final f(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5576
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5577
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->g:Ljava/lang/Object;

    .line 5578
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    return-object p0

    .line 5574
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final g(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5640
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5641
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->h:Ljava/lang/Object;

    .line 5642
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    return-object p0

    .line 5638
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8086
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l;->a()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7086
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l;->a()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5082
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->j()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;
    .locals 1

    .line 5704
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a:I

    .line 5705
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$l$a;->i:Ljava/lang/Object;

    .line 5706
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->onChanged()V

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 5032
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->k()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$l;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$l$a;

    .line 5033
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

    .line 5021
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5021
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

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

    .line 5021
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

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

    .line 5021
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5021
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

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

    .line 5021
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object p1

    return-object p1
.end method
