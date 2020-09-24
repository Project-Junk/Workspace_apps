.class public final Lcom/oppo/os/a/a/a/a/a/a$h$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$h$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$i;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/oppo/os/a/a/a/a/a/a$e;

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$j;",
            "Lcom/oppo/os/a/a/a/a/a/a$j$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/oppo/os/a/a/a/a/a/a$ah;

.field private h:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13045
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 13226
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$e;->a:Lcom/oppo/os/a/a/a/a/a/a$e;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    const-string v0, ""

    .line 13277
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d:Ljava/lang/Object;

    .line 13342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    .line 13545
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$ah;->a:Lcom/oppo/os/a/a/a/a/a/a$ah;

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->g:Lcom/oppo/os/a/a/a/a/a/a$ah;

    .line 13572
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->h:Ljava/lang/Object;

    .line 13046
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->b()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 13051
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 13226
    sget-object p1, Lcom/oppo/os/a/a/a/a/a/a$e;->a:Lcom/oppo/os/a/a/a/a/a/a$e;

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    const-string p1, ""

    .line 13277
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d:Ljava/lang/Object;

    .line 13342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    .line 13545
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$ah;->a:Lcom/oppo/os/a/a/a/a/a/a$ah;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->g:Lcom/oppo/os/a/a/a/a/a/a$ah;

    .line 13572
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->h:Ljava/lang/Object;

    .line 13052
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 13028
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$h$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic a()Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 1

    .line 17060
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$h$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;-><init>()V

    return-object v0
.end method

.method private a(I)Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 1

    .line 13264
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13265
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->c:I

    .line 13266
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->onChanged()V

    return-object p0
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 13213
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$h;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$h;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 13219
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/oppo/os/a/a/a/a/a/a$h;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13215
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13216
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 13219
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/oppo/os/a/a/a/a/a/a$h;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    .line 13221
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 1

    .line 13144
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$h;

    if-eqz v0, :cond_0

    .line 13145
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$h;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/oppo/os/a/a/a/a/a/a$h;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object p1

    return-object p1

    .line 13147
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private a(Lcom/oppo/os/a/a/a/a/a/a$ah;)Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 13559
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13560
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->g:Lcom/oppo/os/a/a/a/a/a/a$ah;

    .line 13561
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->onChanged()V

    return-object p0

    .line 13557
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private a(Lcom/oppo/os/a/a/a/a/a/a$e;)Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 13240
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13241
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    .line 13242
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->onChanged()V

    return-object p0

    .line 13238
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private b()V
    .locals 1

    .line 13055
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13056
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->h()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method

.method private c()Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 2

    .line 13064
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 13065
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$e;->a:Lcom/oppo/os/a/a/a/a/a/a$e;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    .line 13066
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    const/4 v0, 0x0

    .line 13067
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->c:I

    .line 13068
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    const-string v0, ""

    .line 13069
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d:Ljava/lang/Object;

    .line 13070
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13071
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 13072
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    .line 13073
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    goto :goto_0

    .line 13075
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 13077
    :goto_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$ah;->a:Lcom/oppo/os/a/a/a/a/a/a$ah;

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->g:Lcom/oppo/os/a/a/a/a/a/a$ah;

    .line 13078
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13079
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->h:Ljava/lang/Object;

    .line 13080
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    return-object p0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 2

    .line 14060
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$h$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;-><init>()V

    .line 13085
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/oppo/os/a/a/a/a/a/a$h;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$h;
    .locals 2

    .line 13098
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v0

    .line 13099
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$h;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 13100
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private f()Lcom/oppo/os/a/a/a/a/a/a$h;
    .locals 5

    .line 13106
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$h;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 13107
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 13112
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$h;->a(Lcom/oppo/os/a/a/a/a/a/a$h;Lcom/oppo/os/a/a/a/a/a/a$e;)Lcom/oppo/os/a/a/a/a/a/a$e;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 13116
    :cond_1
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->c:I

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$h;->a(Lcom/oppo/os/a/a/a/a/a/a$h;I)I

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 13120
    :cond_2
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$h;->a(Lcom/oppo/os/a/a/a/a/a/a$h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13121
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 13122
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 13123
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    .line 13124
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13126
    :cond_3
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$h;->a(Lcom/oppo/os/a/a/a/a/a/a$h;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 13128
    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$h;->a(Lcom/oppo/os/a/a/a/a/a/a$h;Ljava/util/List;)Ljava/util/List;

    :goto_0
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    or-int/lit8 v1, v1, 0x8

    .line 13133
    :cond_5
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->g:Lcom/oppo/os/a/a/a/a/a/a$ah;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$h;->a(Lcom/oppo/os/a/a/a/a/a/a$h;Lcom/oppo/os/a/a/a/a/a/a$ah;)Lcom/oppo/os/a/a/a/a/a/a$ah;

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_6

    or-int/lit8 v1, v1, 0x10

    .line 13137
    :cond_6
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$h;->b(Lcom/oppo/os/a/a/a/a/a/a$h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13138
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$h;->b(Lcom/oppo/os/a/a/a/a/a/a$h;I)I

    .line 13139
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->onBuilt()V

    return-object v0
.end method

.method private g()V
    .locals 3

    .line 13344
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 13345
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    .line 13346
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    :cond_0
    return-void
.end method

.method private h()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$j;",
            "Lcom/oppo/os/a/a/a/a/a/a$j$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$k;",
            ">;"
        }
    .end annotation

    .line 13533
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 13534
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 13538
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 13539
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 13540
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    .line 13542
    :cond_1
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$h;)Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 2

    .line 13153
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$h;->a()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 13154
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14755
    iget-object v0, p1, Lcom/oppo/os/a/a/a/a/a/a$h;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    .line 13155
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/oppo/os/a/a/a/a/a/a$e;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    .line 13157
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14766
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$h;->c:I

    .line 13158
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    .line 13160
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13161
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13162
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->a(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d:Ljava/lang/Object;

    .line 13163
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->onChanged()V

    .line 13165
    :cond_3
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_5

    .line 13166
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->b(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 13167
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13168
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->b(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    .line 13169
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    goto :goto_0

    .line 13171
    :cond_4
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->g()V

    .line 13172
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->b(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13174
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->onChanged()V

    goto :goto_1

    .line 13177
    :cond_5
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->b(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 13178
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13179
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 13180
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 13181
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->b(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e:Ljava/util/List;

    .line 13182
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13184
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$h;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13185
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->h()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 13187
    :cond_7
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->b(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 13191
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14838
    iget-object v0, p1, Lcom/oppo/os/a/a/a/a/a/a$h;->e:Lcom/oppo/os/a/a/a/a/a/a$ah;

    .line 13192
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/oppo/os/a/a/a/a/a/a$ah;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    .line 13194
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13195
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a:I

    .line 13196
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->c(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h$a;->h:Ljava/lang/Object;

    .line 13197
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->onChanged()V

    .line 13199
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$h;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->e()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->f()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->c()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->c()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->c()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->c()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d()Lcom/oppo/os/a/a/a/a/a/a$h$a;

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

    .line 13028
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->d()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 16094
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$h;->a()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 15094
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$h;->a()Lcom/oppo/os/a/a/a/a/a/a$h;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 13090
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->D()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 13039
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->E()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$h;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$h$a;

    .line 13040
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

    .line 13028
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 13028
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

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

    .line 13028
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

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

    .line 13028
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13028
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

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

    .line 13028
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object p1

    return-object p1
.end method
