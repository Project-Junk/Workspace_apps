.class public final Lcom/oppo/os/a/a/a/a/a/a$h;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$h$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$h;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/oppo/os/a/a/a/a/a/a$h;


# instance fields
.field b:Lcom/oppo/os/a/a/a/a/a/a$e;

.field c:I

.field public d:Ljava/lang/Object;

.field e:Lcom/oppo/os/a/a/a/a/a/a$ah;

.field public f:Ljava/lang/Object;

.field private final h:Lcom/google/protobuf/UnknownFieldSet;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$j;",
            ">;"
        }
    .end annotation
.end field

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12731
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$h$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$h$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$h;->a:Lcom/google/protobuf/Parser;

    .line 13640
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$h;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$h;-><init>()V

    .line 13641
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$h;->g:Lcom/oppo/os/a/a/a/a/a/a$h;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$h;->k()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12617
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 12885
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->k:B

    .line 12919
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->l:I

    .line 12617
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->h:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12637
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 12885
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->k:B

    .line 12919
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->l:I

    .line 12638
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->k()V

    .line 12641
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    const/16 v4, 0x8

    if-nez v1, :cond_c

    .line 12645
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v4, :cond_8

    const/16 v6, 0x10

    if-eq v5, v6, :cond_7

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_6

    const/16 v7, 0x22

    if-eq v5, v7, :cond_4

    const/16 v7, 0x28

    if-eq v5, v7, :cond_2

    const/16 v7, 0x32

    if-eq v5, v7, :cond_1

    .line 12651
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/oppo/os/a/a/a/a/a/a$h;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 12699
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 12700
    iget v7, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    .line 12701
    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->f:Ljava/lang/Object;

    goto :goto_0

    .line 12688
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 12689
    invoke-static {v5}, Lcom/oppo/os/a/a/a/a/a/a$ah;->a(I)Lcom/oppo/os/a/a/a/a/a/a$ah;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v6, 0x5

    .line 12691
    invoke-virtual {v0, v6, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 12693
    :cond_3
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    .line 12694
    iput-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->e:Lcom/oppo/os/a/a/a/a/a/a$ah;

    goto :goto_0

    :cond_4
    and-int/lit8 v5, v3, 0x8

    if-eq v5, v4, :cond_5

    .line 12681
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 12684
    :cond_5
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    sget-object v6, Lcom/oppo/os/a/a/a/a/a/a$j;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12674
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 12675
    iget v6, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    .line 12676
    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->d:Ljava/lang/Object;

    goto :goto_0

    .line 12669
    :cond_7
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    .line 12670
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->c:I

    goto :goto_0

    .line 12658
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 12659
    invoke-static {v5}, Lcom/oppo/os/a/a/a/a/a/a$e;->a(I)Lcom/oppo/os/a/a/a/a/a/a$e;

    move-result-object v6

    if-nez v6, :cond_9

    .line 12661
    invoke-virtual {v0, v2, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 12663
    :cond_9
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    .line 12664
    iput-object v6, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->b:Lcom/oppo/os/a/a/a/a/a/a$e;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    move v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12709
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 12710
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 12707
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x8

    if-ne p2, v4, :cond_b

    .line 12713
    iget-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    .line 12715
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->h:Lcom/google/protobuf/UnknownFieldSet;

    .line 12716
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->makeExtensionsImmutable()V

    .line 12717
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x8

    if-ne p1, v4, :cond_d

    .line 12713
    iget-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    .line 12715
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->h:Lcom/google/protobuf/UnknownFieldSet;

    .line 12716
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12608
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$h;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 12614
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 12885
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->k:B

    .line 12919
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->l:I

    .line 12615
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->h:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 12608
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$h;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$h;I)I
    .locals 0

    .line 12608
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->c:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$h;Lcom/oppo/os/a/a/a/a/a/a$ah;)Lcom/oppo/os/a/a/a/a/a/a$ah;
    .locals 0

    .line 12608
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->e:Lcom/oppo/os/a/a/a/a/a/a$ah;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$h;Lcom/oppo/os/a/a/a/a/a/a$e;)Lcom/oppo/os/a/a/a/a/a/a$e;
    .locals 0

    .line 12608
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    return-object p1
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$h;
    .locals 1

    .line 12621
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$h;->g:Lcom/oppo/os/a/a/a/a/a/a$h;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/lang/Object;
    .locals 0

    .line 12608
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12608
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 12608
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$h;I)I
    .locals 0

    .line 12608
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12608
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/util/List;
    .locals 0

    .line 12608
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$h;)Ljava/lang/Object;
    .locals 0

    .line 12608
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g()Z
    .locals 1

    .line 12608
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$h;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic h()Z
    .locals 1

    .line 12608
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$h;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private i()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 12793
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->d:Ljava/lang/Object;

    .line 12794
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12795
    check-cast v0, Ljava/lang/String;

    .line 12796
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12798
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->d:Ljava/lang/Object;

    return-object v0

    .line 12801
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private j()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 12865
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->f:Ljava/lang/Object;

    .line 12866
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12867
    check-cast v0, Ljava/lang/String;

    .line 12868
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12870
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->f:Ljava/lang/Object;

    return-object v0

    .line 12873
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private k()V
    .locals 2

    .line 12878
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$e;->a:Lcom/oppo/os/a/a/a/a/a/a$e;

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    const/4 v0, 0x0

    .line 12879
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->c:I

    const-string v0, ""

    .line 12880
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->d:Ljava/lang/Object;

    .line 12881
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    .line 12882
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$ah;->a:Lcom/oppo/os/a/a/a/a/a/a$ah;

    iput-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->e:Lcom/oppo/os/a/a/a/a/a/a$ah;

    .line 12883
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->f:Ljava/lang/Object;

    return-void
.end method

.method private l()Lcom/oppo/os/a/a/a/a/a/a$h$a;
    .locals 1

    .line 15014
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    .line 14017
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a(Lcom/oppo/os/a/a/a/a/a/a$h;)Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 12751
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 12762
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 12773
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 12834
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 2

    .line 12845
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 19625
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$h;->g:Lcom/oppo/os/a/a/a/a/a/a$h;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 18625
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$h;->g:Lcom/oppo/os/a/a/a/a/a/a$h;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$h;",
            ">;"
        }
    .end annotation

    .line 12743
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$h;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 12921
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 12925
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 12926
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    .line 12927
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$e;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 12929
    :goto_0
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 12930
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->c:I

    .line 12931
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12933
    :cond_2
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 12935
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->i()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12937
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 12938
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    .line 12939
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12941
    :cond_4
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 12942
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->e:Lcom/oppo/os/a/a/a/a/a/a$ah;

    .line 12943
    invoke-virtual {v2}, Lcom/oppo/os/a/a/a/a/a/a$ah;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12945
    :cond_5
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 12947
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->j()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12949
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12950
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->l:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 12632
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->h:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 12726
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->E()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$h;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$h$a;

    .line 12727
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 12887
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 12891
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->k:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 17014
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 15024
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$h$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 18014
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$h$a;->a()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12608
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->l()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12608
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->l()Lcom/oppo/os/a/a/a/a/a/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 12958
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12897
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->getSerializedSize()I

    .line 12898
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 12899
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->b:Lcom/oppo/os/a/a/a/a/a/a$e;

    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$e;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12901
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 12902
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12904
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 12905
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->i()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    const/4 v0, 0x0

    .line 12907
    :goto_0
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 12908
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12910
    :cond_3
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 12911
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->e:Lcom/oppo/os/a/a/a/a/a/a$ah;

    invoke-virtual {v1}, Lcom/oppo/os/a/a/a/a/a/a$ah;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12913
    :cond_4
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$h;->i:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 12914
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->j()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12916
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$h;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
