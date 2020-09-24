.class public final Lcom/android/settings/c/a$b;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/c/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/c/a$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/c/a$b;",
        "Lcom/android/settings/c/a$b$a;",
        ">;",
        "Lcom/android/settings/c/a$c;"
    }
.end annotation


# static fields
.field private static final b:Lcom/android/settings/c/a$b;

.field private static volatile c:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/c/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/settings/c/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 448
    new-instance v0, Lcom/android/settings/c/a$b;

    invoke-direct {v0}, Lcom/android/settings/c/a$b;-><init>()V

    .line 449
    sput-object v0, Lcom/android/settings/c/a$b;->b:Lcom/android/settings/c/a$b;

    invoke-virtual {v0}, Lcom/android/settings/c/a$b;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/settings/c/a$b;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static a()Lcom/android/settings/c/a$b$a;
    .locals 1

    .line 244
    sget-object v0, Lcom/android/settings/c/a$b;->b:Lcom/android/settings/c/a$b;

    invoke-virtual {v0}, Lcom/android/settings/c/a$b;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/c/a$b$a;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/c/a$b;Lcom/android/settings/c/a$a;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2077
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1108
    :cond_0
    iget-object p0, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1105
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static synthetic b()Lcom/android/settings/c/a$b;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/settings/c/a$b;->b:Lcom/android/settings/c/a$b;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 366
    sget-object v0, Lcom/android/settings/c/a$1;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 441
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 432
    :pswitch_0
    sget-object p1, Lcom/android/settings/c/a$b;->c:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/android/settings/c/a$b;

    monitor-enter p1

    .line 433
    :try_start_0
    sget-object p2, Lcom/android/settings/c/a$b;->c:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 434
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/settings/c/a$b;->b:Lcom/android/settings/c/a$b;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/android/settings/c/a$b;->c:Lcom/google/protobuf/Parser;

    .line 436
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 438
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/settings/c/a$b;->c:Lcom/google/protobuf/Parser;

    return-object p1

    .line 390
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 392
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 397
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 403
    invoke-virtual {p0, v1, p2}, Lcom/android/settings/c/a$b;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 410
    iget-object v1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    .line 411
    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    .line 413
    :cond_4
    iget-object v1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    .line 414
    invoke-static {}, Lcom/android/settings/c/a$a;->b()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/settings/c/a$a;

    .line 413
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    move v0, p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 422
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 424
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 420
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 425
    :goto_3
    throw p1

    .line 429
    :cond_6
    :pswitch_2
    sget-object p1, Lcom/android/settings/c/a$b;->b:Lcom/android/settings/c/a$b;

    return-object p1

    .line 381
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 382
    check-cast p3, Lcom/android/settings/c/a$b;

    .line 383
    iget-object p1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    .line 384
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 378
    :pswitch_4
    new-instance p1, Lcom/android/settings/c/a$b$a;

    invoke-direct {p1, v0}, Lcom/android/settings/c/a$b$a;-><init>(B)V

    return-object p1

    .line 374
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    const/4 p1, 0x0

    return-object p1

    .line 371
    :pswitch_6
    sget-object p1, Lcom/android/settings/c/a$b;->b:Lcom/android/settings/c/a$b;

    return-object p1

    .line 368
    :pswitch_7
    new-instance p1, Lcom/android/settings/c/a$b;

    invoke-direct {p1}, Lcom/android/settings/c/a$b;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 169
    iget v0, p0, Lcom/android/settings/c/a$b;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 173
    :goto_0
    iget-object v2, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    .line 175
    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settings/c/a$b;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 178
    iput v1, p0, Lcom/android/settings/c/a$b;->memoizedSerializedSize:I

    return v1
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/c/a$b;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
