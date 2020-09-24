.class public Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;
.super Ljava/lang/Object;
.source "JsonPacketObject.java"

# interfaces
.implements Lcom/heytap/cloud/sdk/data/Packet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heytap/cloud/sdk/data/Packet<",
        "Lcom/google/b/k;",
        ">;"
    }
.end annotation


# instance fields
.field mJsonObject:Lcom/google/b/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/b/n;

    invoke-direct {v0}, Lcom/google/b/n;-><init>()V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    return-void
.end method

.method private getJsonElement(Ljava/lang/String;)Lcom/google/b/k;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    .line 4165
    iget-object v0, v0, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    invoke-virtual {v0, p1}, Lcom/google/b/b/h;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    invoke-virtual {v0, p1}, Lcom/google/b/n;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->getJsonElement(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/google/b/k;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKV(Ljava/lang/String;)Lcom/heytap/cloud/sdk/data/Packet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/heytap/cloud/sdk/data/Packet<",
            "Lcom/google/b/k;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->getJsonElement(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3056
    instance-of v0, p1, Lcom/google/b/n;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;

    invoke-direct {v0}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/google/b/k;->h()Lcom/google/b/n;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKVAsArray(Ljava/lang/String;)Lcom/heytap/cloud/sdk/data/PacketArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/heytap/cloud/sdk/data/PacketArray<",
            "Lcom/google/b/k;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->getJsonElement(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4047
    instance-of v1, p1, Lcom/google/b/i;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/google/b/k;->i()Lcom/google/b/i;

    move-result-object p1

    .line 81
    new-instance v1, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;

    invoke-direct {v1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;-><init>()V

    .line 82
    invoke-virtual {v1, p1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;->parse(Lcom/google/b/k;)Lcom/heytap/cloud/sdk/data/PacketArray;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->getJsonElement(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/google/b/k;->b()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->getJsonElement(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2075
    instance-of v0, p1, Lcom/google/b/m;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/google/b/k;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    .line 4136
    iget-object v0, v0, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    invoke-virtual {v0}, Lcom/google/b/b/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 98
    new-array v2, v1, [Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 102
    aget-object v4, v2, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public parse(Lcom/google/b/k;)Lcom/heytap/cloud/sdk/data/Packet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/k;",
            ")",
            "Lcom/heytap/cloud/sdk/data/Packet<",
            "Lcom/google/b/k;",
            ">;"
        }
    .end annotation

    .line 114
    check-cast p1, Lcom/google/b/n;

    iput-object p1, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    return-object p0
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Lcom/heytap/cloud/sdk/data/Packet;
    .locals 0

    .line 15
    check-cast p1, Lcom/google/b/k;

    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->parse(Lcom/google/b/k;)Lcom/heytap/cloud/sdk/data/Packet;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    .line 1105
    invoke-static {p2}, Lcom/google/b/n;->a(Ljava/lang/Object;)Lcom/google/b/k;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/b/n;->a(Ljava/lang/String;Lcom/google/b/k;)V

    return-void
.end method

.method public putKV(Ljava/lang/String;Lcom/heytap/cloud/sdk/data/Packet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/heytap/cloud/sdk/data/Packet<",
            "Lcom/google/b/k;",
            ">;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    invoke-interface {p2}, Lcom/heytap/cloud/sdk/data/Packet;->toT()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/b/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/n;->a(Ljava/lang/String;Lcom/google/b/k;)V

    return-void
.end method

.method public putKVAsArray(Ljava/lang/String;Lcom/heytap/cloud/sdk/data/PacketArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/heytap/cloud/sdk/data/PacketArray<",
            "Lcom/google/b/k;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    invoke-interface {p2}, Lcom/heytap/cloud/sdk/data/PacketArray;->toT()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/b/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/n;->a(Ljava/lang/String;Lcom/google/b/k;)V

    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    .line 1094
    invoke-static {p2}, Lcom/google/b/n;->a(Ljava/lang/Object;)Lcom/google/b/k;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/b/n;->a(Ljava/lang/String;Lcom/google/b/k;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toT()Lcom/google/b/n;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->mJsonObject:Lcom/google/b/n;

    return-object v0
.end method

.method public bridge synthetic toT()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;->toT()Lcom/google/b/n;

    move-result-object v0

    return-object v0
.end method
