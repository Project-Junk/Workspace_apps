.class public final Lcom/google/protobuf/SourceContext$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceContext.java"

# interfaces
.implements Lcom/google/protobuf/SourceContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/SourceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/SourceContext$Builder;",
        ">;",
        "Lcom/google/protobuf/SourceContextOrBuilder;"
    }
.end annotation


# instance fields
.field private fileName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 398
    iput-object v0, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 287
    invoke-direct {p0}, Lcom/google/protobuf/SourceContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 398
    iput-object p1, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 293
    invoke-direct {p0}, Lcom/google/protobuf/SourceContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/SourceContext$1;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/SourceContext$1;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Lcom/google/protobuf/SourceContext$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 275
    sget-object v0, Lcom/google/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 296
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SourceContext$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SourceContext$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    .line 355
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->build()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->build()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/SourceContext;
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/google/protobuf/SourceContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 319
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/SourceContext$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/SourceContext;
    .locals 2

    .line 325
    new-instance v0, Lcom/google/protobuf/SourceContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/SourceContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/SourceContext$1;)V

    .line 326
    iget-object v1, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/SourceContext;->access$302(Lcom/google/protobuf/SourceContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clear()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clear()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clear()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clear()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/SourceContext$Builder;
    .locals 1

    .line 301
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 302
    iput-object v0, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    .line 341
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public clearFileName()Lcom/google/protobuf/SourceContext$Builder;
    .locals 1

    .line 468
    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SourceContext;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 469
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    .line 345
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clone()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clone()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clone()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clone()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clone()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/SourceContext$Builder;
    .locals 1

    .line 332
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContext$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->clone()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 313
    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 309
    sget-object v0, Lcom/google/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 409
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 410
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 412
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 413
    iput-object v0, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    return-object v0

    .line 416
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 430
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 431
    check-cast v0, Ljava/lang/String;

    .line 432
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 434
    iput-object v0, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    return-object v0

    .line 437
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 280
    sget-object v0, Lcom/google/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/SourceContext;

    const-class v2, Lcom/google/protobuf/SourceContext$Builder;

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 386
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/SourceContext;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SourceContext;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 388
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/SourceContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0, v0}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 1

    .line 358
    instance-of v0, p1, Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    .line 359
    check-cast p1, Lcom/google/protobuf/SourceContext;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1

    .line 361
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 1

    .line 367
    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 368
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/SourceContext;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    invoke-static {p1}, Lcom/google/protobuf/SourceContext;->access$300(Lcom/google/protobuf/SourceContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 370
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->onChanged()V

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SourceContext$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SourceContext$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    .line 337
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public setFileName(Ljava/lang/String;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 454
    iput-object p1, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->onChanged()V

    return-object p0

    .line 451
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setFileNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 485
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 487
    iput-object p1, p0, Lcom/google/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/SourceContext$Builder;->onChanged()V

    return-object p0

    .line 483
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/SourceContext$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/SourceContext$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SourceContext$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/SourceContext$Builder;
    .locals 0

    return-object p0
.end method
