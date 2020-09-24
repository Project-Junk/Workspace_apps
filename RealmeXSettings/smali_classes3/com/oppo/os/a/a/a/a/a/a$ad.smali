.class public final Lcom/oppo/os/a/a/a/a/a/a$ad;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$ad$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$ad;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/oppo/os/a/a/a/a/a/a$ad;


# instance fields
.field b:I

.field c:Lcom/oppo/os/a/a/a/a/a/a$a;

.field d:Lcom/oppo/os/a/a/a/a/a/a$ab;

.field e:Lcom/oppo/os/a/a/a/a/a/a$v;

.field f:Lcom/oppo/os/a/a/a/a/a/a$n;

.field g:Lcom/oppo/os/a/a/a/a/a/a$c;

.field private final i:Lcom/google/protobuf/UnknownFieldSet;

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/os/a/a/a/a/a/a$x;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Object;

.field private m:B

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 385
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$ad$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$ad$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$ad;->a:Lcom/google/protobuf/Parser;

    .line 1759
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$ad;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$ad;-><init>()V

    .line 1760
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$ad;->h:Lcom/oppo/os/a/a/a/a/a/a$ad;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->m()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 558
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->m:B

    .line 598
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->n:I

    .line 234
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->i:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 558
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->m:B

    .line 598
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->n:I

    .line 255
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->m()V

    .line 258
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    const/16 v4, 0x20

    if-nez v1, :cond_16

    .line 262
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v6, 0x8

    if-eq v5, v6, :cond_13

    const/16 v7, 0x12

    const/4 v8, 0x0

    if-eq v5, v7, :cond_10

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_d

    const/16 v7, 0x22

    if-eq v5, v7, :cond_a

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_7

    const/16 v6, 0x32

    if-eq v5, v6, :cond_5

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_4

    const/16 v6, 0x42

    if-eq v5, v6, :cond_1

    .line 268
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/oppo/os/a/a/a/a/a/a$ad;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 347
    :cond_1
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v6, 0x40

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    .line 348
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->g:Lcom/oppo/os/a/a/a/a/a/a$c;

    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$c;->e()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v8

    .line 350
    :cond_2
    sget-object v5, Lcom/oppo/os/a/a/a/a/a/a$c;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/oppo/os/a/a/a/a/a/a$c;

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->g:Lcom/oppo/os/a/a/a/a/a/a$c;

    if-eqz v8, :cond_3

    .line 352
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->g:Lcom/oppo/os/a/a/a/a/a/a$c;

    invoke-virtual {v8, v5}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    .line 353
    invoke-virtual {v8}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->b()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->g:Lcom/oppo/os/a/a/a/a/a/a$c;

    .line 355
    :cond_3
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    goto :goto_0

    .line 340
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 341
    iget v6, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    or-int/2addr v6, v4

    iput v6, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    .line 342
    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->l:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    and-int/lit8 v5, v3, 0x20

    if-eq v5, v4, :cond_6

    .line 333
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 336
    :cond_6
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    sget-object v6, Lcom/oppo/os/a/a/a/a/a/a$x;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 320
    :cond_7
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v6, 0x10

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_8

    .line 321
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$n;->j()Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v8

    .line 323
    :cond_8
    sget-object v5, Lcom/oppo/os/a/a/a/a/a/a$n;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/oppo/os/a/a/a/a/a/a$n;

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    if-eqz v8, :cond_9

    .line 325
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    invoke-virtual {v8, v5}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a(Lcom/oppo/os/a/a/a/a/a/a$n;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    .line 326
    invoke-virtual {v8}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->b()Lcom/oppo/os/a/a/a/a/a/a$n;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    .line 328
    :cond_9
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    goto/16 :goto_0

    .line 307
    :cond_a
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_b

    .line 308
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->e:Lcom/oppo/os/a/a/a/a/a/a$v;

    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$v;->f()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v8

    .line 310
    :cond_b
    sget-object v5, Lcom/oppo/os/a/a/a/a/a/a$v;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/oppo/os/a/a/a/a/a/a$v;

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->e:Lcom/oppo/os/a/a/a/a/a/a$v;

    if-eqz v8, :cond_c

    .line 312
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->e:Lcom/oppo/os/a/a/a/a/a/a$v;

    invoke-virtual {v8, v5}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    .line 313
    invoke-virtual {v8}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->e:Lcom/oppo/os/a/a/a/a/a/a$v;

    .line 315
    :cond_c
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    goto/16 :goto_0

    .line 294
    :cond_d
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_e

    .line 295
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->d:Lcom/oppo/os/a/a/a/a/a/a$ab;

    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$ab;->e()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v8

    .line 297
    :cond_e
    sget-object v5, Lcom/oppo/os/a/a/a/a/a/a$ab;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/oppo/os/a/a/a/a/a/a$ab;

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->d:Lcom/oppo/os/a/a/a/a/a/a$ab;

    if-eqz v8, :cond_f

    .line 299
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->d:Lcom/oppo/os/a/a/a/a/a/a$ab;

    invoke-virtual {v8, v5}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Lcom/oppo/os/a/a/a/a/a/a$ab;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    .line 300
    invoke-virtual {v8}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->d:Lcom/oppo/os/a/a/a/a/a/a$ab;

    .line 302
    :cond_f
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    goto/16 :goto_0

    .line 281
    :cond_10
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_11

    .line 282
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$a;->f()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v8

    .line 284
    :cond_11
    sget-object v5, Lcom/oppo/os/a/a/a/a/a/a$a;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/oppo/os/a/a/a/a/a/a$a;

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    if-eqz v8, :cond_12

    .line 286
    iget-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    invoke-virtual {v8, v5}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    .line 287
    invoke-virtual {v8}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    .line 289
    :cond_12
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    goto/16 :goto_0

    .line 275
    :cond_13
    iget v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    .line 276
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_14
    :goto_1
    move v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 363
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 364
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 361
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v4, :cond_15

    .line 367
    iget-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    .line 369
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->i:Lcom/google/protobuf/UnknownFieldSet;

    .line 370
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->makeExtensionsImmutable()V

    .line 371
    throw p1

    :cond_16
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v4, :cond_17

    .line 367
    iget-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    .line 369
    :cond_17
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->i:Lcom/google/protobuf/UnknownFieldSet;

    .line 370
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$ad;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 231
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 558
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->m:B

    .line 598
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->n:I

    .line 232
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->i:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$ad;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;I)I
    .locals 0

    .line 225
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->b:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$a;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;Lcom/oppo/os/a/a/a/a/a/a$ab;)Lcom/oppo/os/a/a/a/a/a/a$ab;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->d:Lcom/oppo/os/a/a/a/a/a/a$ab;

    return-object p1
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$ad;
    .locals 1

    .line 238
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$ad;->h:Lcom/oppo/os/a/a/a/a/a/a$ad;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$c;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->g:Lcom/oppo/os/a/a/a/a/a/a$c;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;Lcom/oppo/os/a/a/a/a/a/a$n;)Lcom/oppo/os/a/a/a/a/a/a$n;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$v;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->e:Lcom/oppo/os/a/a/a/a/a/a$v;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;)Ljava/util/List;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$ad;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$ad;I)I
    .locals 0

    .line 225
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$ad;)Ljava/lang/Object;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public static i()Lcom/oppo/os/a/a/a/a/a/a$ad$a;
    .locals 1

    .line 701
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j()Z
    .locals 1

    .line 225
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$ad;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic k()Z
    .locals 1

    .line 225
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$ad;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private l()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->l:Ljava/lang/Object;

    .line 522
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 523
    check-cast v0, Ljava/lang/String;

    .line 524
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 526
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->l:Ljava/lang/Object;

    return-object v0

    .line 529
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x1

    .line 549
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->b:I

    .line 550
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a;->a()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    .line 551
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ab;->a()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->d:Lcom/oppo/os/a/a/a/a/a/a$ab;

    .line 552
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v;->a()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->e:Lcom/oppo/os/a/a/a/a/a/a$v;

    .line 553
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$n;->a()Lcom/oppo/os/a/a/a/a/a/a$n;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    .line 554
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    const-string v0, ""

    .line 555
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->l:Ljava/lang/Object;

    .line 556
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c;->a()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->g:Lcom/oppo/os/a/a/a/a/a/a$c;

    return-void
.end method

.method private n()Lcom/oppo/os/a/a/a/a/a/a$ad$a;
    .locals 1

    .line 3701
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    .line 2704
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a(Lcom/oppo/os/a/a/a/a/a/a$ad;)Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 405
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

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

    .line 416
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

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

    .line 431
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

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

    .line 446
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

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

    .line 461
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 501
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v1, 0x20

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

    .line 8242
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$ad;->h:Lcom/oppo/os/a/a/a/a/a/a$ad;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7242
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$ad;->h:Lcom/oppo/os/a/a/a/a/a/a$ad;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$ad;",
            ">;"
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$ad;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 600
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 604
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 605
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->b:I

    .line 606
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 608
    :goto_0
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 609
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    .line 610
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 612
    :cond_2
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 613
    iget-object v4, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->d:Lcom/oppo/os/a/a/a/a/a/a$ab;

    .line 614
    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_3
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 617
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->e:Lcom/oppo/os/a/a/a/a/a/a$v;

    .line 618
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_4
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 621
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    .line 622
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    const/4 v1, 0x6

    .line 625
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    .line 626
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 628
    :cond_6
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 630
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->l()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 632
    :cond_7
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 633
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->g:Lcom/oppo/os/a/a/a/a/a/a$c;

    .line 634
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 636
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->n:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->i:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .line 537
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 380
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->c()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$ad;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    .line 381
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 560
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 564
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->m:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5701
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 3711
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6701
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->b()Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->n()Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->n()Lcom/oppo/os/a/a/a/a/a/a$ad$a;

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

    .line 645
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->getSerializedSize()I

    .line 571
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 572
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->b:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 574
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->c:Lcom/oppo/os/a/a/a/a/a/a$a;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 577
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 578
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->d:Lcom/oppo/os/a/a/a/a/a/a$ab;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 580
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 581
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->e:Lcom/oppo/os/a/a/a/a/a/a$v;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 583
    :cond_3
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 584
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    const/4 v0, 0x0

    .line 586
    :goto_0
    iget-object v1, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 587
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_5
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 590
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->l()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 592
    :cond_6
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->j:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 593
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$ad;->g:Lcom/oppo/os/a/a/a/a/a/a$c;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 595
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
