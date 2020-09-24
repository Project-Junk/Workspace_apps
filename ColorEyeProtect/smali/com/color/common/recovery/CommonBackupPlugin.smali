.class public final Lcom/color/common/recovery/CommonBackupPlugin;
.super Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;


# instance fields
.field private final MAX_COUNT:I

.field private mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

.field private mBackupImplList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/common/recovery/ICommonBackupInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mCompletedCount:I

.field private mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->MAX_COUNT:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mBackupImplList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mBackupImplList:Ljava/util/ArrayList;

    new-instance v0, Lcom/color/eyeprotect/e/a;

    invoke-direct {v0}, Lcom/color/eyeprotect/e/a;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final backupNumberRecognition()V
    .locals 5

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v1, "BackupPlugin-->backupNumberRecognition"

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mBackupImplList:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/common/recovery/ICommonBackupInterface;

    iget-object v3, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-interface {v2, v3}, Lcom/color/common/recovery/ICommonBackupInterface;->onBackup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-nez v2, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->MAX_COUNT:I

    iput v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mCompletedCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-nez v0, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    check-cast v1, Ljava/io/Writer;

    :goto_1
    iput-object v1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    iput v2, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mCompletedCount:I

    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackupPlugin-->backupNumberRecognition writeFile error-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-nez v0, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    check-cast v1, Ljava/io/Writer;

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-nez v2, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    check-cast v1, Ljava/io/Writer;

    iput-object v1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    :cond_6
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupPlugin-->backupNumberRecognition error-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private final createNumberRecognitionSettingXml(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/color/common/recovery/CommonBackupPlugin;->getBREngineConfig(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "BackupPlugin-->rootPath error"

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Setting"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ColorEyeProtect"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ColorEyeProtect_backup.xml"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/color/common/recovery/CommonBackupPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    check-cast v1, Ljava/io/Writer;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    check-cast v0, Ljava/io/Writer;

    iput-object v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupPlugin-->createFile error-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final getMaxCount()I
    .locals 0

    iget p0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->MAX_COUNT:I

    return p0
.end method

.method private final onBackupAndIncProgress()I
    .locals 2

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v1, "BackupPlugin-->onBackupAndIncProgress"

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonBackupPlugin;->backupNumberRecognition()V

    iget p0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->MAX_COUNT:I

    return p0
.end method


# virtual methods
.method public onBackup(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mIsCancel:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/color/common/recovery/CommonBackupPlugin;->onBackupAndIncProgress()I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonBackupPlugin;->getMaxCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    iget v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mCompletedCount:I

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    iget-object p0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    if-nez p0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-interface {p0, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mIsCancel:Z

    return-void
.end method

.method public onContinue(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "bundle"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brPluginHandler"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v1, "BackupPlugin-->onCreate"

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mContext:Landroid/content/Context;

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;->onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V

    iput-object p2, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;

    if-nez p1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    const/4 p1, 0x0

    check-cast p1, Ljava/io/Writer;

    iput-object p1, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-boolean v0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mIsCancel:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putBRResult(Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonBackupPlugin;->getMaxCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    iget p0, p0, Lcom/color/common/recovery/CommonBackupPlugin;->mCompletedCount:I

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupPlugin-->onDestroy ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "bundle"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/color/common/recovery/CommonBackupPlugin;->createNumberRecognitionSettingXml(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonBackupPlugin;->getMaxCount()I

    move-result p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupPlugin-->onPrepare end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-object p1
.end method

.method public onPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonBackupPlugin;->getMaxCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonBackupPlugin;->getMaxCount()I

    move-result p0

    const/16 v0, 0x280

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/compat/DataSizeUtils;->estimateSize(II)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putPreviewDataSize(Landroid/os/Bundle;J)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupPlugin-->onPreview end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-object p1
.end method
