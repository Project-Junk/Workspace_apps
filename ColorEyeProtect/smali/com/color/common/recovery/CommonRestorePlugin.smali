.class public final Lcom/color/common/recovery/CommonRestorePlugin;
.super Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/common/recovery/CommonRestorePlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/color/common/recovery/CommonRestorePlugin$Companion;

.field private static final MAX_COUNT:I = 0x1


# instance fields
.field private mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

.field private mCompletedCount:I

.field private mContext:Landroid/content/Context;

.field private mHasNumberRecognitionBackupFile:Z

.field private mIsCancel:Z

.field private mRestoreImplList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/common/recovery/ICommonRestoreInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/common/recovery/CommonRestorePlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/common/recovery/CommonRestorePlugin$Companion;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/common/recovery/CommonRestorePlugin;->Companion:Lcom/color/common/recovery/CommonRestorePlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mHasNumberRecognitionBackupFile:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mRestoreImplList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mRestoreImplList:Ljava/util/ArrayList;

    new-instance v0, Lcom/color/eyeprotect/e/c;

    invoke-direct {v0}, Lcom/color/eyeprotect/e/c;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getMaxCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final getNumberRecognitionData(Landroid/os/Bundle;)Z
    .locals 7

    invoke-virtual {p0, p1}, Lcom/color/common/recovery/CommonRestorePlugin;->getBREngineConfig(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 p1, 0x0

    if-nez v1, :cond_1

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v1, "RestorePlugin-->rootPath error"

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mHasNumberRecognitionBackupFile:Z

    return p1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Setting"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ColorEyeProtect"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ColorEyeProtect_backup.xml"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    move-object v3, v0

    check-cast v3, Ljava/io/InputStreamReader;

    move-object v4, v0

    check-cast v4, Ljava/io/BufferedReader;

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p0, v1}, Lcom/color/common/recovery/CommonRestorePlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v5

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    move-object v5, v2

    check-cast v5, Ljava/io/Reader;

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    check-cast v0, Ljava/lang/String;

    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mIsCancel:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mRestoreImplList:Ljava/util/ArrayList;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/common/recovery/ICommonRestoreInterface;

    iget-object v6, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mContext:Landroid/content/Context;

    if-nez v6, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    invoke-interface {v5, v6, v0}, Lcom/color/common/recovery/ICommonRestoreInterface;->onRestoreTempData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mIsCancel:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    xor-int/lit8 p1, v0, 0x1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v4, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    move-object v3, v2

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_3
    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_4
    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception p0

    move-object v1, v2

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_5
    :try_start_5
    iput-boolean p1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mHasNumberRecognitionBackupFile:Z

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RestorePlugin-->loadFile error-->"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    :goto_6
    return p1

    :goto_7
    if-eqz v1, :cond_9

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_5
    move-exception p1

    goto :goto_9

    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    :goto_9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_a
    throw p0
.end method


# virtual methods
.method public onCancel(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mIsCancel:Z

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

    const-string v1, "RestorePlugin-->onCreate"

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mHasNumberRecognitionBackupFile:Z

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;->onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V

    iput-object p2, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-boolean v0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mIsCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putBRResult(Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonRestorePlugin;->getMaxCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    iget p0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mCompletedCount:I

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestorePlugin-->onDestroy ="

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

    invoke-direct {p0, p1}, Lcom/color/common/recovery/CommonRestorePlugin;->getNumberRecognitionData(Landroid/os/Bundle;)Z

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonRestorePlugin;->getMaxCount()I

    move-result p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestorePlugin-->onPrepare end="

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

    invoke-direct {p0}, Lcom/color/common/recovery/CommonRestorePlugin;->getMaxCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonRestorePlugin;->getMaxCount()I

    move-result p0

    const/16 v0, 0x280

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/compat/DataSizeUtils;->estimateSize(II)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putPreviewDataSize(Landroid/os/Bundle;J)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestorePlugin-->onPreview end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-object p1
.end method

.method public onRestore(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mIsCancel:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mRestoreImplList:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/common/recovery/ICommonRestoreInterface;

    iget-object v1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-interface {v0, v1}, Lcom/color/common/recovery/ICommonRestoreInterface;->onRestore(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mCompletedCount:I

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/color/common/recovery/CommonRestorePlugin;->getMaxCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    iget v0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mCompletedCount:I

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    iget-object p0, p0, Lcom/color/common/recovery/CommonRestorePlugin;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    if-nez p0, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-interface {p0, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method
