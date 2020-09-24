.class public final Lcom/oppo/os/a/a/a/a/a/a$r;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/a/a/a/a/a/a$r$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$r;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/oppo/os/a/a/a/a/a/a$r;


# instance fields
.field b:I

.field c:I

.field d:F

.field private final f:Lcom/google/protobuf/UnknownFieldSet;

.field private g:I

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9038
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$r$1;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$r$1;-><init>()V

    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$r;->a:Lcom/google/protobuf/Parser;

    .line 9424
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$r;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$r;-><init>()V

    .line 9425
    sput-object v0, Lcom/oppo/os/a/a/a/a/a/a$r;->e:Lcom/oppo/os/a/a/a/a/a/a$r;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$r;->g()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8959
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 9092
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->h:B

    .line 9117
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->i:I

    .line 8959
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->f:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8979
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 9092
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->h:B

    .line 9117
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->i:I

    .line 8980
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r;->g()V

    .line 8983
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 8987
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_1

    .line 8993
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/oppo/os/a/a/a/a/a/a$r;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 9010
    :cond_1
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    .line 9011
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->d:F

    goto :goto_0

    .line 9005
    :cond_2
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    .line 9006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->c:I

    goto :goto_0

    .line 9000
    :cond_3
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    .line 9001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->b:I
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

    .line 9019
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 9020
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 9017
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9022
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->f:Lcom/google/protobuf/UnknownFieldSet;

    .line 9023
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r;->makeExtensionsImmutable()V

    .line 9024
    throw p1

    .line 9022
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->f:Lcom/google/protobuf/UnknownFieldSet;

    .line 9023
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8950
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$r;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 8956
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 9092
    iput-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->h:B

    .line 9117
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->i:I

    .line 8957
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->f:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V
    .locals 0

    .line 8950
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$r;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$r;F)F
    .locals 0

    .line 8950
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->d:F

    return p1
.end method

.method static synthetic a(Lcom/oppo/os/a/a/a/a/a/a$r;I)I
    .locals 0

    .line 8950
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->b:I

    return p1
.end method

.method public static a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 10200
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->c()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    .line 9203
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/oppo/os/a/a/a/a/a/a$r;
    .locals 1

    .line 8963
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$r;->e:Lcom/oppo/os/a/a/a/a/a/a$r;

    return-object v0
.end method

.method static synthetic b(Lcom/oppo/os/a/a/a/a/a/a$r;I)I
    .locals 0

    .line 8950
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->c:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/os/a/a/a/a/a/a$r;I)I
    .locals 0

    .line 8950
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    return p1
.end method

.method public static e()Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 9200
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->c()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .line 8950
    sget-boolean v0, Lcom/oppo/os/a/a/a/a/a/a$r;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 9088
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->b:I

    .line 9089
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->c:I

    const/4 v0, 0x0

    .line 9090
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->d:F

    return-void
.end method

.method private h()Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 11200
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->c()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    .line 10203
    invoke-virtual {v0, p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 9058
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

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

    .line 9069
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

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

    .line 9080
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

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

    .line 15967
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$r;->e:Lcom/oppo/os/a/a/a/a/a/a$r;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14967
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$r;->e:Lcom/oppo/os/a/a/a/a/a/a$r;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oppo/os/a/a/a/a/a/a$r;",
            ">;"
        }
    .end annotation

    .line 9050
    sget-object v0, Lcom/oppo/os/a/a/a/a/a/a$r;->a:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 9119
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9123
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 9124
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->b:I

    .line 9125
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 9127
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 9128
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->c:I

    .line 9129
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 9131
    :cond_2
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 9132
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->d:F

    .line 9133
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v2, v0

    .line 9135
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 9136
    iput v2, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->i:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 8974
    iget-object v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->f:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 9033
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->w()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$r;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$r$a;

    .line 9034
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 9094
    iget-byte v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 9098
    :cond_1
    iput-byte v1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->h:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13200
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->c()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 11210
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$r$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/os/a/a/a/a/a/a$r$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14200
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->c()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8950
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r;->h()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8950
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r;->h()Lcom/oppo/os/a/a/a/a/a/a$r$a;

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

    .line 9144
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

    .line 9104
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r;->getSerializedSize()I

    .line 9105
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 9106
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->b:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9108
    :cond_0
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 9109
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9111
    :cond_1
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 9112
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$r;->d:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 9114
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
