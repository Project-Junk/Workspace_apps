.class public final Lcom/oppo/os/a/a/a/a/a/a$af$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$af$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$ag;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$f;",
            "Lcom/oppo/os/a/a/a/a/a/a$f$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$z;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$z;",
            "Lcom/oppo/os/a/a/a/a/a/a$z$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$aa;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 9934
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 10172
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c:Ljava/lang/Object;

    .line 10237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    .line 10441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    .line 10668
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->i:Ljava/lang/Object;

    .line 9935
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->b()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 9940
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 10172
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c:Ljava/lang/Object;

    .line 10237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    .line 10441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    .line 10668
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->i:Ljava/lang/Object;

    .line 9941
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 9917
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic a()Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 1

    .line 13950
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$af$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;-><init>()V

    return-object v0
.end method

.method private a(I)Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 1

    .line 10159
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 10160
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->b:I

    .line 10161
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->onChanged()V

    return-object p0
.end method

.method private a(J)Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 1

    .line 10655
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 10656
    iput-wide p1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->h:J

    .line 10657
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->onChanged()V

    return-object p0
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 10135
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$af;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$af;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 10141
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/oppo/os/a/a/a/a/a/a$af;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10137
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$af;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10138
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 10141
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/oppo/os/a/a/a/a/a/a$af;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    .line 10143
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 1

    .line 10043
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$af;

    if-eqz v0, :cond_0

    .line 10044
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$af;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/oppo/os/a/a/a/a/a/a$af;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object p1

    return-object p1

    .line 10046
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 9944
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9945
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->h()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9946
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->j()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method

.method private c()Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 3

    .line 9954
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 9955
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->b:I

    .line 9956
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    const-string v0, ""

    .line 9957
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c:Ljava/lang/Object;

    .line 9958
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 9959
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 9960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    .line 9961
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    goto :goto_0

    .line 9963
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 9965
    :goto_0
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 9966
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    .line 9967
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    goto :goto_1

    .line 9969
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_1
    const-wide/16 v1, 0x0

    .line 9971
    iput-wide v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->h:J

    .line 9972
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 9973
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->i:Ljava/lang/Object;

    .line 9974
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    return-object p0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 2

    .line 10950
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$af$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;-><init>()V

    .line 9979
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/oppo/os/a/a/a/a/a/a$af;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$af;
    .locals 2

    .line 9992
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v0

    .line 9993
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$af;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9994
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private f()Lcom/oppo/os/a/a/a/a/a/a$af;
    .locals 5

    .line 10000
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$af;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$af;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 10001
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 10006
    :cond_0
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->b:I

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$af;->a(Lcom/oppo/os/a/a/a/a/a/a$af;I)I

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 10010
    :cond_1
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$af;->a(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10011
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_3

    .line 10012
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 10013
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    .line 10014
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 10016
    :cond_2
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$af;->a(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 10018
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$af;->a(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/util/List;)Ljava/util/List;

    .line 10020
    :goto_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_5

    .line 10021
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 10022
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    .line 10023
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 10025
    :cond_4
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 10027
    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    or-int/lit8 v1, v1, 0x4

    .line 10032
    :cond_6
    iget-wide v3, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->h:J

    invoke-static {v0, v3, v4}, Lcom/oppo/os/a/a/a/a/a/a$af;->a(Lcom/oppo/os/a/a/a/a/a/a$af;J)J

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    or-int/lit8 v1, v1, 0x8

    .line 10036
    :cond_7
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->i:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10037
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;I)I

    .line 10038
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->onBuilt()V

    return-object v0
.end method

.method private g()V
    .locals 3

    .line 10239
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 10240
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    .line 10241
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    :cond_0
    return-void
.end method

.method private h()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$f;",
            "Lcom/oppo/os/a/a/a/a/a/a$f$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$g;",
            ">;"
        }
    .end annotation

    .line 10428
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 10429
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10433
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 10434
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 10435
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    .line 10437
    :cond_1
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 10443
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 10444
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    .line 10445
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    :cond_0
    return-void
.end method

.method private j()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$z;",
            "Lcom/oppo/os/a/a/a/a/a/a$z$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$aa;",
            ">;"
        }
    .end annotation

    .line 10632
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 10633
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10637
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 10638
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 10639
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    .line 10641
    :cond_1
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$af;)Lcom/oppo/os/a/a/a/a/a/a$af$a;
    .locals 3

    .line 10052
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af;->a()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10053
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11630
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$af;->b:I

    .line 10054
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    .line 10056
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10057
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 10058
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->a(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c:Ljava/lang/Object;

    .line 10059
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->onChanged()V

    .line 10061
    :cond_2
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 10062
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10063
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10064
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    .line 10065
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    goto :goto_0

    .line 10067
    :cond_3
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g()V

    .line 10068
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10070
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->onChanged()V

    goto :goto_2

    .line 10073
    :cond_4
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10074
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10075
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 10076
    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 10077
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d:Ljava/util/List;

    .line 10078
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 10080
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10081
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->h()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 10083
    :cond_6
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->b(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 10087
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_9

    .line 10088
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->c(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 10089
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10090
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->c(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    .line 10091
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    goto :goto_3

    .line 10093
    :cond_8
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->i()V

    .line 10094
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->c(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10096
    :goto_3
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->onChanged()V

    goto :goto_4

    .line 10099
    :cond_9
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->c(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 10100
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10101
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 10102
    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 10103
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->c(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f:Ljava/util/List;

    .line 10104
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 10106
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10107
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->j()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_4

    .line 10109
    :cond_b
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->c(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 10113
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11727
    iget-wide v0, p1, Lcom/oppo/os/a/a/a/a/a/a$af;->e:J

    .line 10114
    invoke-direct {p0, v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(J)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    .line 10116
    :cond_d
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10117
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a:I

    .line 10118
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->d(Lcom/oppo/os/a/a/a/a/a/a$af;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$af$a;->i:Ljava/lang/Object;

    .line 10119
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->onChanged()V

    .line 10121
    :cond_e
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$af;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->e()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->f()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->c()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d()Lcom/oppo/os/a/a/a/a/a/a$af$a;

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

    .line 9917
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->d()Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 12988
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af;->a()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11988
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$af;->a()Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9984
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 9928
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$af;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$af$a;

    .line 9929
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

    .line 9917
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 9917
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

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

    .line 9917
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

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

    .line 9917
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9917
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

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

    .line 9917
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$af$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$af$a;

    move-result-object p1

    return-object p1
.end method
