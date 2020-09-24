.class public abstract Lcom/coloros/backup/sdk/BackupGroupAgent;
.super Lcom/coloros/backup/sdk/BackupAgent;


# instance fields
.field private mChildAgents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mITransport:Lcom/coloros/backup/sdk/ITransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/BackupAgent;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupGroupAgent;->mChildAgents:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getChildAgents()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupGroupAgent;->mChildAgents:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupGroupAgent;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getITransport()Lcom/coloros/backup/sdk/ITransport;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupGroupAgent;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-object p0
.end method

.method public setChildAgent(ILcom/coloros/backup/sdk/BackupAgent;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupGroupAgent;->mChildAgents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupGroupAgent;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public setTransport(Lcom/coloros/backup/sdk/ITransport;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupGroupAgent;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-void
.end method
