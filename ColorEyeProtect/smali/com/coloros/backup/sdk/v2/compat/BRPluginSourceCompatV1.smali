.class public Lcom/coloros/backup/sdk/v2/compat/BRPluginSourceCompatV1;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBRPluginServiceInfos(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/coloros/backup/sdk/BackupAgentManager;->getInstance(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgentManager;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgentManager;->getBackupAgentsAlwaysUpdate()Landroid/util/SparseArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgentManager;->getRestoreAgentsAlwaysUpdate()Landroid/util/SparseArray;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    new-instance v2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-direct {v2, v3}, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;-><init>(Lcom/coloros/backup/sdk/BackupAgent;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method
