.class public Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/restore/RestoreEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/restore/RestoreEngine;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/restore/RestoreEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreRunnable;->this$0:Lcom/coloros/backup/sdk/restore/RestoreEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0xc

    :try_start_0
    invoke-static {}, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->hypnusServiceInit()V

    const/16 v1, 0x5208

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->hypnusSetAction(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "BackupTAG/RestoreEngine"

    const-string v2, "HypnusServiceHelper.HypnusSetAction failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreRunnable;->this$0:Lcom/coloros/backup/sdk/restore/RestoreEngine;

    invoke-static {p0}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->access$000(Lcom/coloros/backup/sdk/restore/RestoreEngine;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->hypnusSetAction(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "BackupTAG/RestoreEngine"

    const-string v0, "HypnusServiceHelper.HypnusSetAction failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->hypnusSetAction(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    const-string v0, "BackupTAG/RestoreEngine"

    const-string v1, "HypnusServiceHelper.HypnusSetAction failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    throw p0
.end method
