.class public abstract Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;
.super Ljava/lang/Object;
.source "AbstractPlugin.java"

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupAppData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "backup_app_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "backup_src_folder"

    .line 86
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "backup_dst_folder"

    .line 87
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-virtual {v2, v3}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    .line 92
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

    .line 314
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 315
    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->parse(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getCacheAppDataFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 321
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

    .line 43
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 1

    const/high16 v0, 0x38000000

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 4

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "get_file_descriptor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "file_path"

    .line 74
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "file_flag"

    .line 75
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {p2, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    .line 79
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    return-object p0
.end method

.method public installPackage(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installPackage, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", flag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbstractPlugin"

    invoke-static {v2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v3, "install_app"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "install_app_file"

    .line 167
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "install_app_flag"

    .line 168
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "install_app_package_name"

    .line 169
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {p2, v4}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p2

    .line 173
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPackage waitResult "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public invokeOtherPluginMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokePluginMethod, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbstractPlugin"

    invoke-static {v2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v3, "invoke_plugin_method"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "invoke_plugin_method_plugin_id"

    .line 151
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "invoke_plugin_method_name"

    .line 152
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "invoke_plugin_method_args"

    .line 153
    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 154
    iget-object p3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {p3, v4}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p3

    .line 157
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokePluginMethod waitResult "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p3}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    .line 38
    invoke-static {}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getInstance()Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    .line 39
    invoke-virtual {p3}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getCacheAppDataFolder()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mCacheAppDataFolder:Ljava/lang/String;

    return-void
.end method

.method public onReveiveMsg(Landroid/content/Intent;Z)V
    .locals 13

    const-string v0, "AbstractPlugin"

    if-nez p1, :cond_0

    const-string p0, "onReceiveMsg intent == null"

    .line 181
    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get_file_descriptor"

    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ", getLock: "

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    const-string p2, "file_path"

    .line 187
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "file_descriptor"

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 191
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v6

    aput-object p2, v3, v8

    invoke-virtual {v1, v3}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg INTENT_GET_FD, path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1, v4}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileDescriptor failed:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "getFileDescriptor failed: lock is null, it\'s a bug!"

    .line 202
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v4, v1

    goto/16 :goto_1

    :cond_3
    const-string v2, "backup_app_data"

    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v9, "onReceiveMsg INTENT_BACKUP_APP_DATA, result:"

    const-string v10, "backup_restore_app_data_result"

    const/4 v11, -0x1

    const/4 v12, 0x3

    if-eqz v3, :cond_5

    const-string p2, "backup_src_folder"

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "backup_dst_folder"

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v4, v12, [Ljava/lang/String;

    aput-object v2, v4, v6

    aput-object p2, v4, v8

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_BACKUP_APP_DATA, srcFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 214
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    const-string p1, "backup app data failed: lock is null, it\'s a bug!"

    .line 219
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "restore_app_data"

    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p2, "restore_src_folder"

    .line 222
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "restore_dst_folder"

    .line 223
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v4, v12, [Ljava/lang/String;

    aput-object v2, v4, v6

    aput-object p2, v4, v8

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_RESTORE_APP_DATA, srcFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    .line 231
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    const-string p1, "restore app data failed: lock is null, it\'s a bug!"

    .line 236
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "tar"

    .line 238
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string p2, "tar_file"

    .line 239
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "tar_source_folder"

    .line 240
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v4, v12, [Ljava/lang/String;

    aput-object v2, v4, v6

    aput-object p2, v4, v8

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_TAR, tarFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_8

    const-string p2, "tar_result"

    .line 247
    invoke-virtual {p1, p2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_TAR, result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    const-string p1, "tar failed: lock is null, it\'s a bug!"

    .line 251
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v3, "restore_tar"

    .line 253
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string p2, "restore_tar_file"

    .line 254
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "restore_tar_package"

    .line 255
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "restore_tar_app_data_dst_folder"

    .line 256
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v6

    aput-object p2, v9, v8

    aput-object v1, v9, v7

    aput-object v3, v9, v12

    invoke-virtual {v4, v9}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_RESTORE_TAR, tarFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_a

    const-string p2, "restore_tar_result"

    .line 265
    invoke-virtual {p1, p2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_RESTORE_TAR, result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    const-string p1, "restore tar failed: lock is null, it\'s a bug!"

    .line 269
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "invoke_plugin_method"

    .line 271
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string p2, "invoke_plugin_method_plugin_id"

    .line 272
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "invoke_plugin_method_name"

    .line 273
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v4, v12, [Ljava/lang/String;

    aput-object v2, v4, v6

    aput-object p2, v4, v8

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg INTENT_INVOKE_PLUGIN_METHOD, methodName:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_c

    const-string p2, "invoke_plugin_method_result"

    .line 280
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_INVOKE_PLUGIN_METHOD, result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v4, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    const-string p1, "invoke method failed: lock is null, it\'s a bug!"

    .line 284
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "install_app"

    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p2, "install_app_package_name"

    .line 287
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "install_app_file"

    .line 288
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    new-array v3, v12, [Ljava/lang/String;

    const-string v4, "install_app"

    aput-object v4, v3, v6

    aput-object v1, v3, v8

    aput-object p2, v3, v7

    invoke-virtual {v2, v3}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object v4

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg INTENT_INSTALL_APP, apkFilePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_e

    const-string p2, "install_app_result"

    .line 295
    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg INTENT_INSTALL_APP, result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v4, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_e
    const-string p1, "install app: lock is null, it\'s a bug!"

    .line 299
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_1
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, v4}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->notifyLock(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)V

    return-void
.end method

.method public restoreAppData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "restore_app_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "restore_src_folder"

    .line 99
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "restore_dst_folder"

    .line 100
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-virtual {v2, v3}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    .line 105
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

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "restore_tar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "restore_tar_file"

    .line 127
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_tar_package"

    .line 128
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_tar_app_data_dst_folder"

    .line 129
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tar"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    .line 135
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

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tar_file"

    .line 112
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tar_source_folder"

    .line 113
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tar_exclude_agrs"

    .line 114
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object p3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-virtual {p3, v2}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->sendMsg(Landroid/content/Intent;Z)V

    .line 120
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/AbstractPlugin;->mLockManager:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
