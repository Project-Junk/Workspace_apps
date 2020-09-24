.class public abstract Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/backup/sdk/v2/component/plugin/IBRPlugin;


# static fields
.field private static final DATA_PATH:Ljava/lang/String; = "/data/data/"

.field private static final TAG:Ljava/lang/String; = "AbstractPlugin"


# instance fields
.field private mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

.field private mCacheAppDataFolder:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupAppData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "backup_app_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "backup_src_folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "backup_dst_folder"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "backup_app_data"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getBREngineConfig(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const-string p0, "config"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->parse(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getCacheAppDataFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mCacheAppDataFolder:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/data/data/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 1

    const/high16 v0, 0x38000000

    invoke-virtual {p0, p1, v0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "get_file_descriptor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "file_flag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "get_file_descriptor"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p2, v1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    return-object p0
.end method

.method public installPackage(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4

    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installPackage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "install_app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "install_app_file"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "install_app_flag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "install_app_package_name"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "install_app"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v3, 0x2

    aput-object p3, v1, v3

    invoke-virtual {p2, v1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p2

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installPackage waitResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public invokeOtherPluginMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokePluginMethod, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "invoke_plugin_method"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "invoke_plugin_method"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "invoke_plugin_method_plugin_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "invoke_plugin_method_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "invoke_plugin_method_args"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "invoke_plugin_method"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v3, 0x2

    aput-object p2, v1, v3

    invoke-virtual {p3, v1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokePluginMethod waitResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p3}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    invoke-static {}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getInstance()Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p3}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getCacheAppDataFolder()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mCacheAppDataFolder:Ljava/lang/String;

    return-void
.end method

.method public onReveiveMsg(Landroid/content/Intent;Z)V
    .locals 10

    if-nez p1, :cond_0

    const-string p0, "AbstractPlugin"

    const-string p1, "onReceiveMsg intent == null"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get_file_descriptor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    const-string p2, "file_path"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "file_descriptor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "get_file_descriptor"

    aput-object v4, v1, v3

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v0

    const-string v1, "AbstractPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveMsg INTENT_GET_FD, path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", getLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    const-string p1, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileDescriptor failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p1, "AbstractPlugin"

    const-string p2, "getFileDescriptor failed: lock is null, it\'s a bug!"

    :goto_0
    invoke-static {p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v2, v0

    goto/16 :goto_7

    :cond_3
    const-string v1, "backup_app_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, -0x1

    const/4 v7, 0x3

    if-eqz v1, :cond_5

    const-string p2, "backup_src_folder"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "backup_dst_folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "backup_app_data"

    aput-object v7, v2, v3

    aput-object p2, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v2

    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg INTENT_BACKUP_APP_DATA, srcFolder:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", getLock: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string p2, "backup_restore_app_data_result"

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "AbstractPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v1, "onReceiveMsg INTENT_BACKUP_APP_DATA, result:"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_4
    invoke-virtual {v2, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_4
    const-string p1, "AbstractPlugin"

    const-string p2, "backup app data failed: lock is null, it\'s a bug!"

    :goto_5
    invoke-static {p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    const-string v1, "restore_app_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p2, "restore_src_folder"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore_dst_folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "restore_app_data"

    aput-object v7, v2, v3

    aput-object p2, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v2

    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg INTENT_RESTORE_APP_DATA, srcFolder:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", getLock: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6

    const-string p2, "backup_restore_app_data_result"

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "AbstractPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_6
    const-string p1, "AbstractPlugin"

    const-string p2, "restore app data failed: lock is null, it\'s a bug!"

    goto :goto_5

    :cond_7
    const-string v1, "tar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p2, "tar_file"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "tar_source_folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "tar"

    aput-object v7, v2, v3

    aput-object p2, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v2

    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg INTENT_TAR, tarFile:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", getLock: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    const-string p2, "tar_result"

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "AbstractPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_TAR, result:"

    goto/16 :goto_3

    :cond_8
    const-string p1, "AbstractPlugin"

    const-string p2, "tar failed: lock is null, it\'s a bug!"

    goto/16 :goto_5

    :cond_9
    const-string v1, "restore_tar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p2, "restore_tar_file"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore_tar_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restore_tar_app_data_dst_folder"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "tar"

    aput-object v9, v8, v3

    aput-object p2, v8, v5

    aput-object v0, v8, v4

    aput-object v1, v8, v7

    invoke-virtual {v2, v8}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v2

    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg INTENT_RESTORE_TAR, tarFile:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", getLock: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    const-string p2, "restore_tar_result"

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "AbstractPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_RESTORE_TAR, result:"

    goto/16 :goto_3

    :cond_a
    const-string p1, "AbstractPlugin"

    const-string p2, "restore tar failed: lock is null, it\'s a bug!"

    goto/16 :goto_5

    :cond_b
    const-string v1, "invoke_plugin_method"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p2, "invoke_plugin_method_plugin_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "invoke_plugin_method_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v2, v7, [Ljava/lang/String;

    const-string v6, "invoke_plugin_method"

    aput-object v6, v2, v3

    aput-object p2, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v2

    const-string p2, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg INTENT_INVOKE_PLUGIN_METHOD, methodName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_c

    const-string p2, "invoke_plugin_method_result"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "AbstractPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_INVOKE_PLUGIN_METHOD, result:"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string p1, "AbstractPlugin"

    const-string p2, "invoke method failed: lock is null, it\'s a bug!"

    goto/16 :goto_5

    :cond_d
    const-string v1, "install_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p2, "install_app_package_name"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "install_app_file"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v2, v7, [Ljava/lang/String;

    const-string v6, "install_app"

    aput-object v6, v2, v3

    aput-object v0, v2, v5

    aput-object p2, v2, v4

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v2

    const-string v1, "AbstractPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveMsg INTENT_INSTALL_APP, apkFilePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    const-string p2, "install_app_result"

    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "AbstractPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_INSTALL_APP, result:"

    goto :goto_6

    :cond_e
    const-string p1, "AbstractPlugin"

    const-string p2, "install app: lock is null, it\'s a bug!"

    goto/16 :goto_5

    :cond_f
    const-string v0, "AbstractPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->notifyLock(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)V

    return-void
.end method

.method public restoreAppData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "restore_app_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "restore_src_folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_dst_folder"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "restore_app_data"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public restoreTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "restore_tar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "restore_tar_file"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_tar_package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_tar_app_data_dst_folder"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "tar"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public tar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "tar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tar_file"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tar_source_folder"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tar_exclude_agrs"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "tar"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-virtual {p3, v1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
