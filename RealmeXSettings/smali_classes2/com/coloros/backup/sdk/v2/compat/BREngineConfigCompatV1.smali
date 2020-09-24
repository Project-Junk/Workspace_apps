.class public Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;
.super Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;
.source "BREngineConfigCompatV1.java"


# instance fields
.field private mITransport:Lcom/coloros/backup/sdk/ITransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransport()Lcom/coloros/backup/sdk/ITransport;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-object v0
.end method

.method public setTransport(Lcom/coloros/backup/sdk/ITransport;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-void
.end method
