.class public final Lcom/oppo/os/a/a/a/a/a/a$r$a;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Adstrategy.java"

# interfaces
.implements Lcom/oppo/os/a/a/a/a/a/a$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/a/a/a/a/a/a$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/oppo/os/a/a/a/a/a/a$r$a;",
        ">;",
        "Lcom/oppo/os/a/a/a/a/a/a$s;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9231
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 10241
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r;->f()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 9237
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 11241
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r;->f()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;B)V
    .locals 0

    .line 9214
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$r$a;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9335
    :try_start_0
    sget-object v1, Lcom/oppo/os/a/a/a/a/a/a$r;->a:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$r;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9341
    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9337
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oppo/os/a/a/a/a/a/a$r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9338
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 9341
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    .line 9343
    :cond_1
    throw p1
.end method

.method private a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 9302
    instance-of v0, p1, Lcom/oppo/os/a/a/a/a/a/a$r;

    if-eqz v0, :cond_0

    .line 9303
    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$r;

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object p1

    return-object p1

    .line 9305
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method static synthetic c()Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 14245
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$r$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 2

    .line 9249
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 9250
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b:I

    .line 9251
    iget v1, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    .line 9252
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->c:I

    .line 9253
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    const/4 v0, 0x0

    .line 9254
    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->d:F

    .line 9255
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    return-object p0
.end method

.method private e()Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 2

    .line 11245
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$r$a;

    invoke-direct {v0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;-><init>()V

    .line 9260
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(F)Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 9407
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    .line 9408
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->d:F

    .line 9409
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->onChanged()V

    return-object p0
.end method

.method public final a(I)Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 9359
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    .line 9360
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b:I

    .line 9361
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->onChanged()V

    return-object p0
.end method

.method public final a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 9311
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r;->a()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9312
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12062
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$r;->b:I

    .line 9313
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    .line 9315
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$r;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12073
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$r;->c:I

    .line 9316
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b(I)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    .line 9318
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$r;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12084
    iget v0, p1, Lcom/oppo/os/a/a/a/a/a/a$r;->d:F

    .line 9319
    invoke-virtual {p0, v0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(F)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    .line 9321
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/os/a/a/a/a/a/a$r;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final a()Lcom/oppo/os/a/a/a/a/a/a$r;
    .locals 2

    .line 9273
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    .line 9274
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$r;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9275
    :cond_0
    invoke-static {v0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final b(I)Lcom/oppo/os/a/a/a/a/a/a$r$a;
    .locals 1

    .line 9383
    iget v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    .line 9384
    iput p1, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->c:I

    .line 9385
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->onChanged()V

    return-object p0
.end method

.method public final b()Lcom/oppo/os/a/a/a/a/a/a$r;
    .locals 5

    .line 9281
    new-instance v0, Lcom/oppo/os/a/a/a/a/a/a$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/os/a/a/a/a/a/a$r;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;B)V

    .line 9282
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 9287
    :cond_0
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b:I

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$r;->a(Lcom/oppo/os/a/a/a/a/a/a$r;I)I

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 9291
    :cond_1
    iget v3, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->c:I

    invoke-static {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$r;->b(Lcom/oppo/os/a/a/a/a/a/a$r;I)I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 9295
    :cond_2
    iget v2, p0, Lcom/oppo/os/a/a/a/a/a/a$r$a;->d:F

    invoke-static {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$r;->a(Lcom/oppo/os/a/a/a/a/a/a$r;F)F

    .line 9296
    invoke-static {v0, v1}, Lcom/oppo/os/a/a/a/a/a/a$r;->c(Lcom/oppo/os/a/a/a/a/a/a$r;I)I

    .line 9297
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->onBuilt()V

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 9214
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9214
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 9214
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9214
    invoke-virtual {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->d()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->d()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->d()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->d()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->e()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->e()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->e()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->e()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->e()Lcom/oppo/os/a/a/a/a/a/a$r$a;

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

    .line 9214
    invoke-direct {p0}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->e()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13269
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r;->a()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12269
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r;->a()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9265
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->v()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 9225
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a;->w()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/oppo/os/a/a/a/a/a/a$r;

    const-class v2, Lcom/oppo/os/a/a/a/a/a/a$r$a;

    .line 9226
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

    .line 9214
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 9214
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

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

    .line 9214
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

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

    .line 9214
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9214
    invoke-direct {p0, p1}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/google/protobuf/Message;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

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

    .line 9214
    invoke-direct {p0, p1, p2}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object p1

    return-object p1
.end method
