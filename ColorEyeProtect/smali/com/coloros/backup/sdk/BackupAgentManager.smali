.class public Lcom/coloros/backup/sdk/BackupAgentManager;
.super Ljava/lang/Object;


# static fields
.field private static mInstance:Lcom/coloros/backup/sdk/BackupAgentManager;


# instance fields
.field private mBackupAgentArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRestoreAgentArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BackupTAG SDK"

    const-string v1, "BackupAgentManager, SDK version is: 1.20"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgentManager;
    .locals 1

    sget-object v0, Lcom/coloros/backup/sdk/BackupAgentManager;->mInstance:Lcom/coloros/backup/sdk/BackupAgentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/backup/sdk/BackupAgentManager;

    invoke-direct {v0, p0}, Lcom/coloros/backup/sdk/BackupAgentManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/backup/sdk/BackupAgentManager;->mInstance:Lcom/coloros/backup/sdk/BackupAgentManager;

    :cond_0
    sget-object p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mInstance:Lcom/coloros/backup/sdk/BackupAgentManager;

    return-object p0
.end method


# virtual methods
.method public getBackupAgents()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mBackupAgentArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/backup/sdk/BackupAgentFactory;->loadBackupAgents(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mBackupAgentArray:Landroid/util/SparseArray;

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mBackupAgentArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getBackupAgentsAlwaysUpdate()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/backup/sdk/BackupAgentFactory;->loadBackupAgents(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mBackupAgentArray:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mBackupAgentArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getRestoreAgents()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mRestoreAgentArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/backup/sdk/BackupAgentFactory;->loadRestoreAgents(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mRestoreAgentArray:Landroid/util/SparseArray;

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mRestoreAgentArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getRestoreAgentsAlwaysUpdate()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/backup/sdk/BackupAgentFactory;->loadRestoreAgents(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mRestoreAgentArray:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mRestoreAgentArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method public updateAgents()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mBackupAgentArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/backup/sdk/BackupAgentFactory;->loadBackupAgents(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mBackupAgentArray:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mRestoreAgentArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/backup/sdk/BackupAgentFactory;->loadRestoreAgents(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentManager;->mRestoreAgentArray:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method
