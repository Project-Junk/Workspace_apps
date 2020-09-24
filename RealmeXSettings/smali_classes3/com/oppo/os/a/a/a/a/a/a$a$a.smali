.class public final Lcom/oppo/os/a/a/a/a/a/a$a$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$a$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$b;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Lcom/oppo/os/a/a/a/a/a/a$x;

.field private d:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$x;",
            "Lcom/oppo/os/a/a/a/a/a/a$x$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$y;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2139
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 2269
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b:Ljava/lang/Object;

    .line 2333
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2431
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e:Ljava/lang/Object;

    .line 2140
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 2145
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 2269
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b:Ljava/lang/Object;

    .line 2333
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2431
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e:Ljava/lang/Object;

    .line 2146
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 2122
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$a$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2256
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$a;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$a;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2262
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2258
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2259
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 2262
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    .line 2264
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 2219
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$a;

    if-eqz v0, :cond_0

    .line 2220
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$a;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object p1

    return-object p1

    .line 2222
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private b(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 3

    .line 2376
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2377
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2378
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2380
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$x;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    goto :goto_0

    .line 2382
    :cond_0
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2384
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->onChanged()V

    goto :goto_1

    .line 2386
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2388
    :goto_1
    iget p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 6154
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$a$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;-><init>()V

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 2149
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->h()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 2

    .line 2158
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 2159
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b:Ljava/lang/Object;

    .line 2160
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    .line 2161
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_0

    .line 2162
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    goto :goto_0

    .line 2164
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2166
    :goto_0
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    .line 2167
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e:Ljava/lang/Object;

    .line 2168
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    return-object p0
.end method

.method private f()Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 2

    .line 3154
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$a$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;-><init>()V

    .line 2173
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/oppo/os/a/a/a/a/a/a$x;
    .locals 1

    .line 2342
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    return-object v0

    .line 2345
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/os/a/a/a/a/a/a$x;

    return-object v0
.end method

.method private h()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$x;",
            "Lcom/oppo/os/a/a/a/a/a/a$x$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$y;",
            ">;"
        }
    .end annotation

    .line 2420
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2421
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2423
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->g()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v1

    .line 2424
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2425
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 2426
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2428
    :cond_0
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 2228
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a;->a()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2229
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2230
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    .line 2231
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$a;->b(Lcom/oppo/os/a/a/a/a/a/a$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b:Ljava/lang/Object;

    .line 2232
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->onChanged()V

    .line 2234
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3952
    iget-object v0, p1, Lcom/oppo/os/a/a/a/a/a/a$a;->b:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2235
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    .line 2237
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2238
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    .line 2239
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$a;->c(Lcom/oppo/os/a/a/a/a/a/a$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e:Ljava/lang/Object;

    .line 2240
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->onChanged()V

    .line 2242
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$a;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 2350
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2354
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    .line 2355
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->onChanged()V

    goto :goto_0

    .line 2352
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2357
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2359
    :goto_0
    iget p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 2309
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    .line 2310
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b:Ljava/lang/Object;

    .line 2311
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->onChanged()V

    return-object p0
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$a;
    .locals 2

    .line 2186
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    .line 2187
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$a;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2188
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$a$a;
    .locals 1

    .line 2471
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    .line 2472
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e:Ljava/lang/Object;

    .line 2473
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->onChanged()V

    return-object p0
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$a;
    .locals 5

    .line 2194
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$a;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 2195
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 2200
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 2204
    :cond_1
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->d:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 2205
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x;

    goto :goto_0

    .line 2207
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/oppo/os/a/a/a/a/a/a$x;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x;

    :goto_0
    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    or-int/lit8 v1, v1, 0x4

    .line 2212
    :cond_3
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$a;->b(Lcom/oppo/os/a/a/a/a/a/a$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;I)I

    .line 2214
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2122
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2122
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2122
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2122
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->e()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

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

    .line 2122
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5182
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a;->a()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4182
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a;->a()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2178
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 2133
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$a;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$a$a;

    .line 2134
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

    .line 2122
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2122
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

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

    .line 2122
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

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

    .line 2122
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2122
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

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

    .line 2122
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object p1

    return-object p1
.end method
