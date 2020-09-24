.class public Lcom/heytap/cloud/sdk/utils/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# static fields
.field private static sInstance:Lcom/heytap/cloud/sdk/utils/SyncManager;


# instance fields
.field private final ACTION_DATA_CHANGE:Ljava/lang/String;

.field final EXTRA_APP:Ljava/lang/String;

.field final EXTRA_RECOVER_FLAG:Ljava/lang/String;

.field private final PERMISSION_DATA_CHANGE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mLastSendDataChangeMsgTime:J

.field private mTimestampSendDataChangeMsg:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SyncManager"

    .line 27
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->TAG:Ljava/lang/String;

    const-string v0, "com.heytap.cloud.action.DATA_CHANGED"

    .line 29
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->ACTION_DATA_CHANGE:Ljava/lang/String;

    const-string v0, "heytap.permission.cloud.ACCESS_SYNC_SERVICE"

    .line 30
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->PERMISSION_DATA_CHANGE:Ljava/lang/String;

    const-string v0, "DATA"

    .line 32
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->EXTRA_APP:Ljava/lang/String;

    const-string v0, "NEED_RECOVERY"

    .line 33
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->EXTRA_RECOVER_FLAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->mLastSendDataChangeMsgTime:J

    const-wide/16 v0, 0xbb8

    .line 37
    iput-wide v0, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->mTimestampSendDataChangeMsg:J

    return-void
.end method

.method public static getInstance()Lcom/heytap/cloud/sdk/utils/SyncManager;
    .locals 3

    .line 42
    const-class v0, Lcom/heytap/cloud/sdk/utils/SyncManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/heytap/cloud/sdk/utils/SyncManager;->sInstance:Lcom/heytap/cloud/sdk/utils/SyncManager;

    if-nez v1, :cond_0

    .line 44
    const-class v1, Lcom/heytap/cloud/sdk/utils/SyncManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    new-instance v2, Lcom/heytap/cloud/sdk/utils/SyncManager;

    invoke-direct {v2}, Lcom/heytap/cloud/sdk/utils/SyncManager;-><init>()V

    sput-object v2, Lcom/heytap/cloud/sdk/utils/SyncManager;->sInstance:Lcom/heytap/cloud/sdk/utils/SyncManager;

    .line 46
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    sget-object v0, Lcom/heytap/cloud/sdk/utils/SyncManager;->sInstance:Lcom/heytap/cloud/sdk/utils/SyncManager;

    return-object v0

    :catchall_1
    move-exception v1

    .line 48
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public sendSyncDataChangeMsg(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "SyncManager"

    if-eqz p1, :cond_3

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    sub-long v3, v1, v3

    .line 74
    iget-wide v5, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->mTimestampSendDataChangeMsg:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const-string p1, "sendSyncDataChangeMsg sent to many."

    .line 75
    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_1
    invoke-static {p1}, Lcom/heytap/cloud/sdk/base/CloudBaseUtils;->getCloudPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "sendSyncDataChangeMsg. TextUtils.isEmpty(targetName) is true."

    .line 81
    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_2
    iput-wide v1, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->mTimestampSendDataChangeMsg:J

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.heytap.cloud.action.DATA_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DATA"

    .line 89
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "NEED_RECOVERY"

    .line 90
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    const-string p2, "heytap.permission.cloud.ACCESS_SYNC_SERVICE"

    .line 93
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendSyncDataChangeMsg failed. error = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "(context == null) || TextUtils.isEmpty(moduleName) is true."

    .line 69
    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTimestampSendDataChangeMsg()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->mTimestampSendDataChangeMsg:J

    return-wide v0
.end method

.method public setTimestampSendDataChangeMsg(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/heytap/cloud/sdk/utils/SyncManager;->mTimestampSendDataChangeMsg:J

    return-void
.end method
