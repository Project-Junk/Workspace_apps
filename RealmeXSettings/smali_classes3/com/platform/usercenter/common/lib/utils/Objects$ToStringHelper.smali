.class public final Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/common/lib/utils/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/platform/usercenter/common/lib/utils/Objects$1;)V

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->holderHead:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    .line 208
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->holderHead:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->holderTail:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->omitNullValues:Z

    .line 215
    invoke-static {p1}, Lcom/platform/usercenter/common/lib/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/platform/usercenter/common/lib/utils/Objects$1;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;
    .locals 2

    .line 423
    new-instance v0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/platform/usercenter/common/lib/utils/Objects$1;)V

    .line 424
    iget-object v1, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->holderTail:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->next:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->holderTail:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 1

    .line 429
    invoke-direct {p0}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder()Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 430
    iput-object p1, v0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 1

    .line 435
    invoke-direct {p0}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder()Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 436
    iput-object p2, v0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 437
    invoke-static {p1}, Lcom/platform/usercenter/common/lib/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;C)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 258
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;D)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 268
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;F)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 278
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;I)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 288
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;J)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 298
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;Z)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 248
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(C)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 335
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(D)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 348
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(F)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 361
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(I)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 374
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(J)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 387
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(Z)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 0

    .line 322
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final omitNullValues()Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;
    .locals 1

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->omitNullValues:Z

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 405
    iget-boolean v0, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->omitNullValues:Z

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    iget-object v2, p0, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper;->holderHead:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    iget-object v2, v2, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->next:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    .line 409
    iget-object v4, v2, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 410
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v3, v2, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, v2, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    :cond_1
    iget-object v3, v2, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 408
    :cond_2
    iget-object v2, v2, Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;->next:Lcom/platform/usercenter/common/lib/utils/Objects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 419
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
