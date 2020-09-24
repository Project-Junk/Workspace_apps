.class public Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;
.super Ljava/lang/Object;
.source "JsonPacketFactory.java"

# interfaces
.implements Lcom/heytap/cloud/sdk/data/PacketFactory;


# static fields
.field private static volatile sInstance:Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;
    .locals 2

    .line 15
    sget-object v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;->sInstance:Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;->sInstance:Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;

    invoke-direct {v1}, Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;-><init>()V

    sput-object v1, Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;->sInstance:Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;->sInstance:Lcom/heytap/cloud/sdk/data/json/JsonPacketFactory;

    return-object v0
.end method


# virtual methods
.method public newKv()Lcom/heytap/cloud/sdk/data/Packet;
    .locals 1

    .line 30
    new-instance v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;

    invoke-direct {v0}, Lcom/heytap/cloud/sdk/data/json/JsonPacketObject;-><init>()V

    return-object v0
.end method

.method public newKvArray()Lcom/heytap/cloud/sdk/data/PacketArray;
    .locals 1

    .line 35
    new-instance v0, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;

    invoke-direct {v0}, Lcom/heytap/cloud/sdk/data/json/JsonPacketArray;-><init>()V

    return-object v0
.end method
