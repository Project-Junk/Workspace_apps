.class public final Lcom/oppo/os/a/a/a/a/a/a$n;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$n$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$n;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/oppo/os/a/a/a/a/a/a$n;


# instance fields
.field b:Lcom/oppo/os/a/a/a/a/a/a$l;

.field c:Lcom/oppo/os/a/a/a/a/a/a$p;

.field d:Lcom/oppo/os/a/a/a/a/a/a$r;

.field e:Lcom/oppo/os/a/a/a/a/a/a$t;

.field private final g:Lcom/google/protobuf/UnknownFieldSet;

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3215
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$n$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$n$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$n;->a:Lcom/google/protobuf/Parser;

    .line 4358
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$n;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$n;-><init>()V

    .line 4359
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$n;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$n;->o()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3081
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 3408
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->l:B

    .line 3445
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->m:I

    .line 3081
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->g:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3101
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 3408
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->l:B

    .line 3445
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->m:I

    .line 3102
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->o()V

    .line 3105
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_11

    .line 3109
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_10

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v3, v4, :cond_d

    const/16 v4, 0x12

    if-eq v3, v4, :cond_a

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x32

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    .line 3115
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$n;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 3186
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 3187
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    .line 3188
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->k:Ljava/lang/Object;

    goto :goto_0

    .line 3180
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 3181
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    .line 3182
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->j:Ljava/lang/Object;

    goto :goto_0

    .line 3174
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 3175
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    .line 3176
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->i:Ljava/lang/Object;

    goto :goto_0

    .line 3162
    :cond_4
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    .line 3163
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->e:Lcom/oppo/os/a/a/a/a/a/a$t;

    .line 10692
    invoke-static {v3}, Lcom/oppo/os/a/a/a/a/a/a$t;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v5

    .line 3165
    :cond_5
    sget-object v3, Lcom/oppo/os/a/a/a/a/a/a$t;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/oppo/os/a/a/a/a/a/a$t;

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->e:Lcom/oppo/os/a/a/a/a/a/a$t;

    if-eqz v5, :cond_6

    .line 3167
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->e:Lcom/oppo/os/a/a/a/a/a/a$t;

    invoke-virtual {v5, v3}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    .line 3168
    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->b()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->e:Lcom/oppo/os/a/a/a/a/a/a$t;

    .line 3170
    :cond_6
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    goto :goto_0

    .line 3149
    :cond_7
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    .line 3150
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->d:Lcom/oppo/os/a/a/a/a/a/a$r;

    .line 10205
    invoke-static {v3}, Lcom/oppo/os/a/a/a/a/a/a$r;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v5

    .line 3152
    :cond_8
    sget-object v3, Lcom/oppo/os/a/a/a/a/a/a$r;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/oppo/os/a/a/a/a/a/a$r;

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->d:Lcom/oppo/os/a/a/a/a/a/a$r;

    if-eqz v5, :cond_9

    .line 3154
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->d:Lcom/oppo/os/a/a/a/a/a/a$r;

    invoke-virtual {v5, v3}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    .line 3155
    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->d:Lcom/oppo/os/a/a/a/a/a/a$r;

    .line 3157
    :cond_9
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    goto/16 :goto_0

    .line 3136
    :cond_a
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_b

    .line 3137
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->c:Lcom/oppo/os/a/a/a/a/a/a$p;

    .line 10101
    invoke-static {v3}, Lcom/oppo/os/a/a/a/a/a/a$p;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v5

    .line 3139
    :cond_b
    sget-object v3, Lcom/oppo/os/a/a/a/a/a/a$p;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/oppo/os/a/a/a/a/a/a$p;

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->c:Lcom/oppo/os/a/a/a/a/a/a$p;

    if-eqz v5, :cond_c

    .line 3141
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->c:Lcom/oppo/os/a/a/a/a/a/a$p;

    invoke-virtual {v5, v3}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    .line 3142
    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->c:Lcom/oppo/os/a/a/a/a/a/a$p;

    .line 3144
    :cond_c
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    goto/16 :goto_0

    .line 3123
    :cond_d
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_e

    .line 3124
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    invoke-virtual {v3}, Lcom/oppo/os/a/a/a/a/a/a$l;->k()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v5

    .line 3126
    :cond_e
    sget-object v3, Lcom/oppo/os/a/a/a/a/a/a$l;->a:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/oppo/os/a/a/a/a/a/a$l;

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    if-eqz v5, :cond_f

    .line 3128
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    invoke-virtual {v5, v3}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    .line 3129
    invoke-virtual {v5}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    .line 3131
    :cond_f
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_1
    move v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3196
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3197
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3194
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3199
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->g:Lcom/google/protobuf/UnknownFieldSet;

    .line 3200
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->makeExtensionsImmutable()V

    .line 3201
    throw p1

    .line 3199
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->g:Lcom/google/protobuf/UnknownFieldSet;

    .line 3200
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3072
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$n;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3078
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 3408
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->l:B

    .line 3445
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->m:I

    .line 3079
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->g:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 3072
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$n;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$n;I)I
    .locals 0

    .line 3072
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$n;Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$l;
    .locals 0

    .line 3072
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    return-object p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$n;)Lcom/oppo/os/a/a/a/a/a/a$n$a;
    .locals 1

    .line 11544
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->c()Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    .line 3547
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a(Lcom/oppo/os/a/a/a/a/a/a$n;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$n;
    .locals 1

    .line 3085
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$n;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$n;Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$p;
    .locals 0

    .line 3072
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->c:Lcom/oppo/os/a/a/a/a/a/a$p;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$n;Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r;
    .locals 0

    .line 3072
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->d:Lcom/oppo/os/a/a/a/a/a/a$r;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$n;Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$t;
    .locals 0

    .line 3072
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->e:Lcom/oppo/os/a/a/a/a/a/a$t;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3072
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$n;)Ljava/lang/Object;
    .locals 0

    .line 3072
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3072
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$n;)Ljava/lang/Object;
    .locals 0

    .line 3072
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3072
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/oppo/os/a/a/a/a/a/a$n;)Ljava/lang/Object;
    .locals 0

    .line 3072
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public static i()Lcom/oppo/os/a/a/a/a/a/a$n$a;
    .locals 1

    .line 3544
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->c()Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k()Z
    .locals 1

    .line 3072
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$n;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private l()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3315
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->i:Ljava/lang/Object;

    .line 3316
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3317
    check-cast v0, Ljava/lang/String;

    .line 3318
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3320
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->i:Ljava/lang/Object;

    return-object v0

    .line 3323
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private m()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3351
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->j:Ljava/lang/Object;

    .line 3352
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3353
    check-cast v0, Ljava/lang/String;

    .line 3354
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3356
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->j:Ljava/lang/Object;

    return-object v0

    .line 3359
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private n()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3387
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->k:Ljava/lang/Object;

    .line 3388
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3389
    check-cast v0, Ljava/lang/String;

    .line 3390
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3392
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->k:Ljava/lang/Object;

    return-object v0

    .line 3395
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private o()V
    .locals 1

    .line 3400
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l;->a()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    .line 3401
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p;->a()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->c:Lcom/oppo/os/a/a/a/a/a/a$p;

    .line 3402
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r;->a()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->d:Lcom/oppo/os/a/a/a/a/a/a$r;

    .line 3403
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t;->a()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->e:Lcom/oppo/os/a/a/a/a/a/a$t;

    const-string v0, ""

    .line 3404
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->i:Ljava/lang/Object;

    .line 3405
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->j:Ljava/lang/Object;

    .line 3406
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 3235
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

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

    .line 3250
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

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

    .line 3265
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

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

    .line 3280
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

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

    .line 3295
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

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

    .line 3331
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

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

    .line 17089
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$n;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 16089
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$n;->f:Lcom/oppo/os/a/a/a/a/a/a$n;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$n;",
            ">;"
        }
    .end annotation

    .line 3227
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$n;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 3447
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3451
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3452
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    .line 3453
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3455
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 3456
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->c:Lcom/oppo/os/a/a/a/a/a/a$p;

    .line 3457
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3459
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 3460
    iget-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->d:Lcom/oppo/os/a/a/a/a/a/a$r;

    .line 3461
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3463
    :cond_3
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 3464
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->e:Lcom/oppo/os/a/a/a/a/a/a$t;

    .line 3465
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3467
    :cond_4
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    .line 3469
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->l()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3471
    :cond_5
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 3473
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->m()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3475
    :cond_6
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x7

    .line 3477
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3479
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 3480
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->m:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3096
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->g:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .line 3367
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

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

    .line 3210
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->i()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$n;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$n$a;

    .line 3211
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3410
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3414
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->l:B

    return v1
.end method

.method public final j()Lcom/oppo/os/a/a/a/a/a/a$n$a;
    .locals 1

    .line 12544
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->c()Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    .line 11547
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a(Lcom/oppo/os/a/a/a/a/a/a$n;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14544
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->c()Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 12554
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$n$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$n$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 15544
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->c()Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3072
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->j()Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3072
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->j()Lcom/oppo/os/a/a/a/a/a/a$n$a;

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

    .line 3488
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

    .line 3420
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->getSerializedSize()I

    .line 3421
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3422
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->b:Lcom/oppo/os/a/a/a/a/a/a$l;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3424
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3425
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->c:Lcom/oppo/os/a/a/a/a/a/a$p;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3427
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 3428
    iget-object v2, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->d:Lcom/oppo/os/a/a/a/a/a/a$r;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3430
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 3431
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->e:Lcom/oppo/os/a/a/a/a/a/a$t;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3433
    :cond_3
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 3434
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->l()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3436
    :cond_4
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 3437
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->m()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3439
    :cond_5
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$n;->h:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 3440
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3442
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$n;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
