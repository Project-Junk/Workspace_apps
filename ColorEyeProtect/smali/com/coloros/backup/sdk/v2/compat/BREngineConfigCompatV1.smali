.class public Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;
.super Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;


# instance fields
.field private mITransport:Lcom/coloros/backup/sdk/ITransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransport()Lcom/coloros/backup/sdk/ITransport;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-object p0
.end method

.method public setTransport(Lcom/coloros/backup/sdk/ITransport;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-void
.end method
