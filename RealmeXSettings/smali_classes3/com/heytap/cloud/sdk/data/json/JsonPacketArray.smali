.class public Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;
.super Ljava/lang/Object;
.source "JsonPacketArray.java"

# interfaces
.implements Lcom/heytap/cloud/sdk/data/PacketArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heytap/cloud/sdk/data/PacketArray<",
        "Lcom/google/b/k;",
        ">;"
    }
.end annotation


# instance fields
.field private mJsonArray:Lcom/google/b/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/google/b/i;

    invoke-direct {v0}, Lcom/google/b/i;-><init>()V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->mJsonArray:Lcom/google/b/i;

    return-void
.end method


# virtual methods
.method public add(Lcom/heytap/cloud/sdk/data/Packet;)V
    .locals 1

    .line 17
    instance-of v0, p1, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->mJsonArray:Lcom/google/b/i;

    check-cast p1, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;

    iget-object p1, p1, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    invoke-virtual {v0, p1}, Lcom/google/b/i;->a(Lcom/google/b/k;)V

    :cond_0
    return-void
.end method

.method public get(I)Lcom/heytap/cloud/sdk/data/Packet;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->mJsonArray:Lcom/google/b/i;

    invoke-virtual {v0, p1}, Lcom/google/b/i;->a(I)Lcom/google/b/k;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;

    invoke-direct {v0}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;-><init>()V

    .line 2056
    instance-of v1, p1, Lcom/google/b/n;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/google/b/k;->h()Lcom/google/b/n;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    :cond_0
    return-object v0
.end method

.method public parse(Lcom/google/b/k;)Lcom/heytap/cloud/sdk/data/PacketArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/k;",
            ")",
            "Lcom/heytap/cloud/sdk/data/PacketArray<",
            "Lcom/google/b/k;",
            ">;"
        }
    .end annotation

    .line 52
    check-cast p1, Lcom/google/b/i;

    iput-object p1, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->mJsonArray:Lcom/google/b/i;

    return-object p0
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Lcom/heytap/cloud/sdk/data/PacketArray;
    .locals 0

    .line 11
    check-cast p1, Lcom/google/b/k;

    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->parse(Lcom/google/b/k;)Lcom/heytap/cloud/sdk/data/PacketArray;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lcom/heytap/cloud/sdk/data/Packet;)Z
    .locals 1

    .line 24
    instance-of v0, p1, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->mJsonArray:Lcom/google/b/i;

    check-cast p1, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;

    iget-object p1, p1, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    .line 1140
    iget-object v0, v0, Lcom/google/b/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->mJsonArray:Lcom/google/b/i;

    invoke-virtual {v0}, Lcom/google/b/i;->a()I

    move-result v0

    return v0
.end method

.method public toT()Lcom/google/b/k;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->mJsonArray:Lcom/google/b/i;

    return-object v0
.end method

.method public bridge synthetic toT()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->toT()Lcom/google/b/k;

    move-result-object v0

    return-object v0
.end method
