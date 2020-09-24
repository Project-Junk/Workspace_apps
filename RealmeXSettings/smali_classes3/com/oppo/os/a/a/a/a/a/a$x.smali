.class public final Lcom/oppo/os/a/a/a/a/a/a$x;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$x$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$x;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/oppo/os/a/a/a/a/a/a$x;


# instance fields
.field b:I

.field private final d:Lcom/google/protobuf/UnknownFieldSet;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7282
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$x$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$x$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$x;->a:Lcom/google/protobuf/Parser;

    .line 7802
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$x;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$x;-><init>()V

    .line 7803
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$x;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$x;->i()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7201
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 7386
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->h:B

    .line 7411
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->i:I

    .line 7201
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7221
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 7386
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->h:B

    .line 7411
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->i:I

    .line 7222
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->i()V

    .line 7225
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 7229
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    .line 7235
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$x;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 7254
    :cond_1
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    .line 7255
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->b:I

    goto :goto_0

    .line 7248
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 7249
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    .line 7250
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->g:Ljava/lang/Object;

    goto :goto_0

    .line 7242
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 7243
    iget v4, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    .line 7244
    iput-object v3, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7263
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 7264
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7261
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7266
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 7267
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->makeExtensionsImmutable()V

    .line 7268
    throw p1

    .line 7266
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->d:Lcom/google/protobuf/UnknownFieldSet;

    .line 7267
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7192
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$x;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 7198
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 7386
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->h:B

    .line 7411
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->i:I

    .line 7199
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 7192
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$x;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$x;I)I
    .locals 0

    .line 7192
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->b:I

    return p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    .line 8494
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    .line 7497
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$x;
    .locals 1

    .line 7205
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$x;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$x;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7192
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$x;I)I
    .locals 0

    .line 7192
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$x;)Ljava/lang/Object;
    .locals 0

    .line 7192
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$x;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7192
    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$x;)Ljava/lang/Object;
    .locals 0

    .line 7192
    iget-object p0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static e()Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    .line 7494
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .line 7192
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$x;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private g()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7322
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->f:Ljava/lang/Object;

    .line 7323
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7324
    check-cast v0, Ljava/lang/String;

    .line 7325
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7327
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->f:Ljava/lang/Object;

    return-object v0

    .line 7330
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private h()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7358
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->g:Ljava/lang/Object;

    .line 7359
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7360
    check-cast v0, Ljava/lang/String;

    .line 7361
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7363
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->g:Ljava/lang/Object;

    return-object v0

    .line 7366
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private i()V
    .locals 1

    const-string v0, ""

    .line 7382
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->f:Ljava/lang/Object;

    .line 7383
    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7384
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->b:I

    return-void
.end method

.method private j()Lcom/oppo/os/a/a/a/a/a/a$x$a;
    .locals 1

    .line 9494
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    .line 8497
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 7302
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

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

    .line 7338
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

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

    .line 7374
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    const/4 v1, 0x4

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

    .line 14209
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$x;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13209
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$x;->c:Lcom/oppo/os/a/a/a/a/a/a$x;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$x;",
            ">;"
        }
    .end annotation

    .line 7294
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$x;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 7413
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7417
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 7419
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->g()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 7421
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 7423
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->h()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 7425
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 7426
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->b:I

    .line 7427
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 7429
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 7430
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->i:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 7216
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->d:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 7277
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$x;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$x$a;

    .line 7278
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7388
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7392
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->h:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11494
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 9504
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$x$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$x$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12494
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->c()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7192
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->j()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7192
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->j()Lcom/oppo/os/a/a/a/a/a/a$x$a;

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

    .line 7438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7398
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->getSerializedSize()I

    .line 7399
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 7400
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->g()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7402
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7403
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->h()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7405
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7406
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$x;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7408
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$x;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
