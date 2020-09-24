.class public Lcom/coloros/backup/sdk/BackupAgentFactory;
.super Ljava/lang/Object;


# static fields
.field private static final BACKUP_AGENT_INTENT:Ljava/lang/String; = "com.oppo.backup.backup_service"

.field private static final BACKUP_AGENT_IPC_INTENT:Ljava/lang/String; = "com.oppo.backup.backup_ipc_service"

.field private static final MISMATCH:Ljava/lang/String; = "coloros.action.backup.jar.mismatch"

.field public static final PACKAGE_TAG_NEW:Ljava/lang/String; = "com.coloros.backuprestore"

.field public static final PACKAGE_TAG_OLD:Ljava/lang/String; = "com.oppo.backuprestore"

.field private static final RESTORE_AGENT_INTENT:Ljava/lang/String; = "com.oppo.backup.restore_service"

.field private static final RESTORE_AGENT_IPC_INTENT:Ljava/lang/String; = "com.oppo.backup.restore_ipc_service"

.field public static final TAG:Ljava/lang/String; = "BackupRestore BackupAgentFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBackupAgent(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/coloros/backup/sdk/BackupAgent;
    .locals 11

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/Utils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v8, "BackupRestore BackupAgentFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createBackupAgent appPath:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    const-string v8, "BackupRestore BackupAgentFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createBackupAgent appPath:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v8, "com.coloros.backuprestore"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.oppo.backuprestore"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-class v8, Ljava/lang/ClassLoader;

    const-string v9, "parent"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    :goto_0
    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/backup/sdk/IBackupAgentFactory;

    if-nez v6, :cond_1

    const-string v4, "BackupRestore BackupAgentFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createBackupAgent error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-interface {v6, p0}, Lcom/coloros/backup/sdk/IBackupAgentFactory;->createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    :try_start_1
    invoke-virtual {v6}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v3

    iput-object v0, v3, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v3

    iput-object v1, v3, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v3, "BackupRestore BackupAgentFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createBackupAgent time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v4

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v6

    goto/16 :goto_e

    :catch_0
    move-exception v4

    move-object v3, v6

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v3, v6

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v3, v6

    goto/16 :goto_3

    :catch_3
    move-exception v4

    move-object v3, v6

    goto/16 :goto_5

    :catch_4
    move-exception v4

    move-object v3, v6

    goto/16 :goto_6

    :catch_5
    move-exception v4

    move-object v3, v6

    goto/16 :goto_7

    :catch_6
    move-exception v4

    move-object v3, v6

    goto/16 :goto_8

    :catch_7
    move-exception v4

    move-object v3, v6

    goto/16 :goto_9

    :catch_8
    move-exception v4

    move-object v3, v6

    goto/16 :goto_a

    :catch_9
    move-exception v4

    move-object v3, v6

    goto/16 :goto_b

    :catch_a
    move-exception v4

    move-object v3, v6

    goto/16 :goto_c

    :catch_b
    move-exception v4

    :goto_1
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent otherException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "coloros.action.backup.jar.mismatch"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_c
    move-exception v4

    :goto_2
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent ClassCastException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "coloros.action.backup.jar.mismatch"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_d
    move-exception v4

    :goto_3
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent IncompatibleClassChangeError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "coloros.action.backup.jar.mismatch"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_e

    :catch_e
    move-exception v4

    :goto_5
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent NoSuchFieldException"

    goto :goto_d

    :catch_f
    move-exception v4

    :goto_6
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent InvocationTargetException"

    goto :goto_d

    :catch_10
    move-exception v4

    :goto_7
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent IllegalAccessException"

    goto :goto_d

    :catch_11
    move-exception v4

    :goto_8
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent InstantiationException"

    goto :goto_d

    :catch_12
    move-exception v4

    :goto_9
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent IllegalArgumentException"

    goto :goto_d

    :catch_13
    move-exception v4

    :goto_a
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent NoSuchMethodException"

    goto :goto_d

    :catch_14
    move-exception v4

    :goto_b
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent ClassNotFoundException"

    goto :goto_d

    :catch_15
    move-exception v4

    :goto_c
    const-string v5, "BackupRestore BackupAgentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBackupAgent NameNotFoundException"

    :goto_d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2
    const-string v4, "BackupRestore BackupAgentFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createBackupAgent warnning!!! isSystemApp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    if-nez v3, :cond_5

    new-instance v4, Lcom/coloros/backup/sdk/backup/BackupAgentIPCServiceProxy;

    invoke-direct {v4}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCServiceProxy;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v5, -0x1

    if-eqz p1, :cond_3

    const-string v6, "com.coloros.backuprestore.MODULE_TYPE"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v6, "BackupRestore BackupAgentFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createBackupAgent BackupAgentIPCServiceProxy, type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isSystemApp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_3
    move p1, v5

    :goto_f
    invoke-virtual {v4}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCServiceProxy;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v2

    iput p1, v2, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    iput-object v0, v2, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    if-eq p1, v5, :cond_4

    invoke-virtual {v4, p0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCServiceProxy;->createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;

    move-result-object v3

    goto :goto_10

    :cond_4
    const-string p0, "BackupRestore BackupAgentFactory"

    const-string p1, "createBackupAgent BackupAgentIPCServiceProxy, moduleType == -1, pls add metaData \"com.coloros.backuprestore.MODULE_TYPE\""

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_10
    return-object v3
.end method

.method public static loadAgents(Landroid/content/Context;Landroid/content/Intent;)Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadAgentsByIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadAgentsByIntent(Landroid/content/Context;[Landroid/content/Intent;)Landroid/util/SparseArray;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    array-length v5, v0

    const/4 v7, 0x0

    move v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v5, :cond_1

    aget-object v10, v0, v8

    const/16 v11, 0x80

    invoke-virtual {v4, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    if-nez v9, :cond_0

    move-object v9, v10

    goto :goto_1

    :cond_0
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    move v5, v7

    :goto_2
    if-ge v5, v4, :cond_8

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    const-string v10, "BackupRestore BackupAgentFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createBackupAgent :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_4

    const-string v11, "com.coloros.backuprestore.GROUP_TYPE"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    const-string v12, "com.coloros.backuprestore.GROUP_NAME"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.coloros.backuprestore.GROUP_ALONE"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    move v13, v10

    move-object/from16 v10, p0

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v10, p0

    move v13, v0

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    move-object/from16 v10, p0

    move v13, v0

    move v11, v7

    :goto_3
    invoke-static {v10, v8}, Lcom/coloros/backup/sdk/BackupAgentFactory;->createBackupAgent(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/coloros/backup/sdk/BackupAgent;

    move-result-object v14

    if-eqz v14, :cond_7

    const-string v8, "BackupRestore BackupAgentFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type == "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v6

    iget v6, v6, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -- groupType == "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    if-ne v6, v11, :cond_5

    invoke-virtual {v3, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setIsChildAgent(Z)V

    invoke-virtual {v14, v13}, Lcom/coloros/backup/sdk/BackupAgent;->setCanAlone(Z)V

    goto :goto_4

    :cond_5
    if-ne v0, v11, :cond_6

    invoke-virtual {v2, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v14}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v6

    iget v6, v6, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v1, v6, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    const-string v6, "BackupRestore BackupAgentFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createBackupAgent error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_5
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v6, v9

    check-cast v6, Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {v5}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v8

    iget v8, v8, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v6, v8, v5}, Lcom/coloros/backup/sdk/BackupGroupAgent;->setChildAgent(ILcom/coloros/backup/sdk/BackupAgent;)V

    invoke-virtual {v9}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v6

    iget v6, v6, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v5, v6}, Lcom/coloros/backup/sdk/BackupAgent;->setGroupType(I)V

    move v6, v0

    move v8, v7

    goto :goto_7

    :cond_b
    move v8, v0

    move v6, v7

    :goto_7
    if-nez v6, :cond_c

    invoke-virtual {v5}, Lcom/coloros/backup/sdk/BackupAgent;->getCanAlone()Z

    move-result v6

    if-nez v6, :cond_c

    move v8, v7

    :cond_c
    if-eqz v8, :cond_9

    invoke-virtual {v5, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setIsAlong(Z)V

    invoke-virtual {v5}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v6

    iget v6, v6, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_d
    return-object v1
.end method

.method public static loadBackupAgents(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.backup.backup_service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.backup.backup_ipc_service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Lcom/coloros/backup/sdk/BackupAgentFactory;->loadAgentsByIntent(Landroid/content/Context;[Landroid/content/Intent;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static loadRestoreAgents(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.backup.restore_service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.backup.restore_ipc_service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Lcom/coloros/backup/sdk/BackupAgentFactory;->loadAgentsByIntent(Landroid/content/Context;[Landroid/content/Intent;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method
