.class public final Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;
.super Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;
.source "SystemUiBackupPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUiBackupPlugin"

.field private static final TYPE_FILE_INFO:I = 0x1faf


# instance fields
.field private mBackupDataSize:I

.field private mBackupDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCompletedCount:I

.field private mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private mIsPause:Z

.field private mMaxCount:I

.field private mPauseLock:Ljava/lang/Object;

.field private mSystemUiXmlComposer:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mPauseLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mBackupDatas:Ljava/util/HashMap;

    return-void
.end method

.method private initData()V
    .locals 3

    .line 169
    iget v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    if-gez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mBackupDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mBackupDatas:Ljava/util/HashMap;

    invoke-static {}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->getInstance()Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->handleBackup(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mBackupDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mBackupDataSize:I

    .line 173
    iget v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mBackupDataSize:I

    iput v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    :cond_0
    return-void
.end method

.method private writeToFile(Ljava/lang/String;[B)V
    .locals 4

    const-string p0, "Error:"

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUiBackupPlugin"

    const-string v2, "BackupRestore"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 181
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 182
    :try_start_1
    array-length v0, p2

    invoke-virtual {v3, p2, p1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 183
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 192
    invoke-static {v2, v1, p0, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 185
    :goto_0
    :try_start_3
    invoke-static {v2, v1, p0, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 189
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 192
    invoke-static {v2, v1, p0, p2}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :cond_1
    :goto_3
    throw p1
.end method


# virtual methods
.method public onBackup(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "BackupRestore"

    const-string v1, "SystemUiBackupPlugin"

    const-string v2, "onBackup"

    .line 98
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mSystemUiXmlComposer:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;

    if-eqz v0, :cond_3

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mIsCancel:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mCompletedCount:I

    iget v1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    if-ge v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mIsPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "BackupRestore"

    const-string v2, "SystemUiBackupPlugin"

    const-string v3, "on pause wait lock here"

    .line 104
    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mBackupDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupRestore"

    const-string v5, "SystemUiBackupPlugin"

    invoke-static {v4, v5, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mSystemUiXmlComposer:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;

    invoke-virtual {v3, v2, v1}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->addRecord(Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    iget v1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mCompletedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mCompletedCount:I

    .line 116
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    iget v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 118
    iget v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mCompletedCount:I

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 119
    invoke-virtual {p0}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 109
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mSystemUiXmlComposer:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;

    invoke-virtual {v0}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->endCompose()Z

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mSystemUiXmlComposer:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;

    invoke-virtual {v0}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->getXmlInfo()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget v1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mCompletedCount:I

    if-lez v1, :cond_3

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->getBREngineConfig(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->FOLDER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Systemui.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->writeToFile(Ljava/lang/String;[B)V

    :cond_3
    return-void
.end method

.method public onCancel(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mIsCancel:Z

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mIsPause:Z

    .line 152
    iget-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mPauseLock:Ljava/lang/Object;

    monitor-enter p1

    .line 153
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p0, "BackupRestore"

    const-string v0, "SystemUiBackupPlugin"

    const-string v1, "onCancel mLock.notifyAll()"

    .line 154
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onContinue(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mIsPause:Z

    .line 142
    iget-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mPauseLock:Ljava/lang/Object;

    monitor-enter p1

    .line 143
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p0, "BackupRestore"

    const-string v0, "SystemUiBackupPlugin"

    const-string v1, "onContinue mLock.notifyAll()"

    .line 144
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;->onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V

    .line 50
    iput-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 160
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 161
    iget-boolean v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mIsCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putBRResult(Landroid/os/Bundle;I)V

    .line 162
    iget v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 163
    iget p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mCompletedCount:I

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDestroy ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupRestore"

    const-string v1, "SystemUiBackupPlugin"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mIsPause:Z

    return-void
.end method

.method public onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "SystemUiBackupPlugin"

    const-string v1, "BackupRestore"

    const-string v2, "onPrepare"

    .line 66
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->initData()V

    .line 69
    iget v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    if-lez v2, :cond_1

    .line 70
    new-instance v2, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;

    invoke-direct {v2}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;-><init>()V

    iput-object v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mSystemUiXmlComposer:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;

    .line 71
    iget-object v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mSystemUiXmlComposer:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;

    invoke-virtual {v2}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->startCompose()Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->getBREngineConfig(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->FOLDER:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupRootPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Systemui.xml"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 82
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "Error:"

    .line 84
    invoke-static {v1, v0, v3, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepare():create file failed path ="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 91
    iget p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepare end="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->initData()V

    .line 56
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 57
    iget v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 58
    iget p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiBackupPlugin;->mMaxCount:I

    const/16 v0, 0x1faf

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/compat/DataSizeUtils;->estimateSize(II)J

    move-result-wide v0

    .line 59
    invoke-static {p1, v0, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putPreviewDataSize(Landroid/os/Bundle;J)V

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreview end ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupRestore"

    const-string v1, "SystemUiBackupPlugin"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
