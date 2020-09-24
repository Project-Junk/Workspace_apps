.class public Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;
.super Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;
.source "SystemUiRestorePlugin.java"


# static fields
.field private static final BYTE_COUNT:I = 0x200

.field private static final TAG:Ljava/lang/String; = "SystemUiRestorePlugin"


# instance fields
.field private mCompletedCount:I

.field private mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private mMaxCount:I

.field private mSystemUiXmlParser:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mMaxCount:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mCompletedCount:I

    return-void
.end method

.method private getRestorePath(Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)Ljava/lang/String;
    .locals 0

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->FOLDER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Systemui.xml"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getXmlInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string p0, "Error:"

    const-string v0, "SystemUiRestorePlugin"

    const-string v1, "BackupRestore"

    const/4 v2, 0x0

    .line 107
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x200

    .line 110
    new-array v5, v4, [B

    :goto_0
    const/4 v6, 0x0

    .line 111
    invoke-virtual {v3, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 112
    invoke-virtual {p1, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 126
    invoke-static {v1, v0, p0, v2}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v3, v2

    .line 120
    :goto_2
    :try_start_3
    invoke-static {v1, v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 124
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v3, v2

    .line 118
    :goto_3
    :try_start_5
    invoke-static {v1, v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    .line 124
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v3, v2

    .line 116
    :goto_4
    :try_start_7
    invoke-static {v1, v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_1

    .line 124
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    move-exception p1

    .line 126
    invoke-static {v1, v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_5
    return-object v2

    :goto_6
    if-eqz v3, :cond_2

    .line 124
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception v2

    .line 126
    invoke-static {v1, v0, p0, v2}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :cond_2
    :goto_7
    throw p1
.end method


# virtual methods
.method public onCancel(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mIsCancel:Z

    return-void
.end method

.method public onContinue(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;->onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V

    .line 42
    iput-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 96
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 97
    iget-boolean v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mIsCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putBRResult(Landroid/os/Bundle;I)V

    .line 98
    iget v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mMaxCount:I

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 99
    iget p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mCompletedCount:I

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDestroy ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupRestore"

    const-string v1, "SystemUiRestorePlugin"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "SystemUiRestorePlugin"

    const-string v1, "BackupRestore"

    const-string v2, "onPrepare"

    .line 53
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->getBREngineConfig(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->getRestorePath(Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRestorePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->getXmlInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mSystemUiXmlParser:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;

    invoke-direct {v2}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;-><init>()V

    iput-object v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mSystemUiXmlParser:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;

    .line 60
    iget-object v2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mSystemUiXmlParser:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;

    iget-object v3, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v3}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;->parse(Ljava/lang/String;Landroid/content/Context;)V

    .line 61
    iget-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mSystemUiXmlParser:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;

    invoke-virtual {p1}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;->getItemCount()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mMaxCount:I

    .line 64
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 65
    iget p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mMaxCount:I

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 66
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
    .locals 1

    const-string p0, "BackupRestore"

    const-string p1, "SystemUiRestorePlugin"

    const-string v0, "onRestore"

    .line 47
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onRestore(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "BackupRestore"

    const-string v0, "SystemUiRestorePlugin"

    const-string v1, "onRestore"

    .line 72
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mIsCancel:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mSystemUiXmlParser:Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;->restore(Landroid/content/Context;)V

    .line 75
    iget p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mMaxCount:I

    iput p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiRestorePlugin;->mCompletedCount:I

    :cond_0
    return-void
.end method
