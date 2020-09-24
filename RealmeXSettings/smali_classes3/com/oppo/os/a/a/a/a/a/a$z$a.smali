.class public final Lcom/oppo/os/a/a/a/a/a/a$z$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$z$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$aa;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Lcom/oppo/os/a/a/a/a/a/a$z$b;

.field private e:Ljava/lang/Object;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$h;",
            "Lcom/oppo/os/a/a/a/a/a/a$h$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$i;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 11878
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 12063
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->b:Ljava/lang/Object;

    .line 12127
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c:Ljava/lang/Object;

    .line 12191
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 12218
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->e:Ljava/lang/Object;

    .line 12283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    .line 12486
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->h:Ljava/lang/Object;

    .line 11879
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->b()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 11884
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 12063
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->b:Ljava/lang/Object;

    .line 12127
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c:Ljava/lang/Object;

    .line 12191
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 12218
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->e:Ljava/lang/Object;

    .line 12283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    .line 12486
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->h:Ljava/lang/Object;

    .line 11885
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 11861
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$z$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic a()Lcom/oppo/os/a/a/a/a/a/a$z$a;
    .locals 1

    .line 15893
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;-><init>()V

    return-object v0
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$z$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12050
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$z;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$z;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 12056
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/oppo/os/a/a/a/a/a/a$z;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12052
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12053
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 12056
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/oppo/os/a/a/a/a/a/a$z;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    .line 12058
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$z$a;
    .locals 1

    .line 11977
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$z;

    if-eqz v0, :cond_0

    .line 11978
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$z;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/oppo/os/a/a/a/a/a/a$z;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object p1

    return-object p1

    .line 11980
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private a(Lcom/oppo/os/a/a/a/a/a/a$z$b;)Lcom/oppo/os/a/a/a/a/a/a$z$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 12205
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 12206
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 12207
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->onChanged()V

    return-object p0

    .line 12203
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private b()V
    .locals 1

    .line 11888
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11889
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->h()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method

.method private c()Lcom/oppo/os/a/a/a/a/a/a$z$a;
    .locals 2

    .line 11897
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 11898
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->b:Ljava/lang/Object;

    .line 11899
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 11900
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c:Ljava/lang/Object;

    .line 11901
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 11902
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$z$b;->a:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 11903
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 11904
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->e:Ljava/lang/Object;

    .line 11905
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 11906
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 11907
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    .line 11908
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    goto :goto_0

    .line 11910
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 11912
    :goto_0
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->h:Ljava/lang/Object;

    .line 11913
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    return-object p0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$z$a;
    .locals 2

    .line 12893
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;-><init>()V

    .line 11918
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/oppo/os/a/a/a/a/a/a$z;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$z;
    .locals 2

    .line 11931
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v0

    .line 11932
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$z;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 11933
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private f()Lcom/oppo/os/a/a/a/a/a/a$z;
    .locals 5

    .line 11939
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$z;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 11940
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 11945
    :cond_0
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$z;->a(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 11949
    :cond_1
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$z;->b(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 11953
    :cond_2
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$z;->a(Lcom/oppo/os/a/a/a/a/a/a$z;Lcom/oppo/os/a/a/a/a/a/a$z$b;)Lcom/oppo/os/a/a/a/a/a/a$z$b;

    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    or-int/lit8 v1, v1, 0x8

    .line 11957
    :cond_3
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->e:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$z;->c(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11958
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_5

    .line 11959
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 11960
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    .line 11961
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 11963
    :cond_4
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$z;->a(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 11965
    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$z;->a(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/util/List;)Ljava/util/List;

    :goto_0
    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_6

    or-int/lit8 v1, v1, 0x10

    .line 11970
    :cond_6
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$z;->d(Lcom/oppo/os/a/a/a/a/a/a$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11971
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$z;->a(Lcom/oppo/os/a/a/a/a/a/a$z;I)I

    .line 11972
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->onBuilt()V

    return-object v0
.end method

.method private g()V
    .locals 3

    .line 12285
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 12286
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    .line 12287
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    :cond_0
    return-void
.end method

.method private h()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/oppo/os/a/a/a/a/a/a$h;",
            "Lcom/oppo/os/a/a/a/a/a/a$h$a;",
            "Lcom/oppo/os/a/a/a/a/a/a$i;",
            ">;"
        }
    .end annotation

    .line 12474
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12475
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12479
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 12480
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 12481
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    .line 12483
    :cond_1
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/oppo/os/a/a/a/a/a/a$z;)Lcom/oppo/os/a/a/a/a/a/a$z$a;
    .locals 2

    .line 11986
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z;->a()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11987
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11988
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 11989
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->a(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->b:Ljava/lang/Object;

    .line 11990
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->onChanged()V

    .line 11992
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11993
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 11994
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->b(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c:Ljava/lang/Object;

    .line 11995
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->onChanged()V

    .line 11997
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13610
    iget-object v0, p1, Lcom/oppo/os/a/a/a/a/a/a$z;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 11998
    invoke-direct {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/oppo/os/a/a/a/a/a/a$z$b;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    .line 12000
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12001
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 12002
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->c(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->e:Ljava/lang/Object;

    .line 12003
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->onChanged()V

    .line 12005
    :cond_4
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_6

    .line 12006
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->d(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 12007
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12008
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->d(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    .line 12009
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    goto :goto_0

    .line 12011
    :cond_5
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g()V

    .line 12012
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->d(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12014
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->onChanged()V

    goto :goto_1

    .line 12017
    :cond_6
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->d(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 12018
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12019
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 12020
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 12021
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->d(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f:Ljava/util/List;

    .line 12022
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 12024
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12025
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->h()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 12027
    :cond_8
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->g:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->d(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 12031
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12032
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a:I

    .line 12033
    invoke-static {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->e(Lcom/oppo/os/a/a/a/a/a/a$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$z$a;->h:Ljava/lang/Object;

    .line 12034
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->onChanged()V

    .line 12036
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$z;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->e()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->e()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->f()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->c()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d()Lcom/oppo/os/a/a/a/a/a/a$z$a;

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

    .line 11861
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->d()Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14927
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z;->a()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13927
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$z;->a()Lcom/oppo/os/a/a/a/a/a/a$z;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11923
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->B()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 11872
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->C()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$z;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$z$a;

    .line 11873
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

    .line 11861
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11861
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

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

    .line 11861
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

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

    .line 11861
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11861
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

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

    .line 11861
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$z$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$z$a;

    move-result-object p1

    return-object p1
.end method
