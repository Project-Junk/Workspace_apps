.class public Lcom/coloros/backup/sdk/v2/compat/LocalTransport;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/backup/sdk/ITransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/compat/LocalTransport$ModulePath;
    }
.end annotation


# static fields
.field private static final CMCC_FEARURE:Ljava/lang/String; = "oppo.cmcc.test"

.field public static final MEDIA_DATA:I = 0x4

.field private static final NAME:Ljava/lang/String; = "local_transport"

.field public static final PERSONAL_DATA:I = 0x2

.field private static final SELECT_ALL_PACKAGE:Ljava/lang/String; = "type_app_select_all_package"

.field public static final SYSTEM_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field public static final TYPE_ACCOUNT:I = 0x150

.field public static final TYPE_APP:I = 0x10

.field public static final TYPE_BROWSER:I = 0x130

.field public static final TYPE_CALENDAR:I = 0x8

.field public static final TYPE_CALLRECORD:I = 0x110

.field public static final TYPE_CLOCK:I = 0x120

.field public static final TYPE_CLOUDNOTE:I = 0x190

.field public static final TYPE_CONTACT:I = 0x1

.field public static final TYPE_CONTACTS_BLACKLIST:I = 0x250

.field public static final TYPE_FILE:I = 0x230

.field public static final TYPE_FILE_FOLDER:I = 0x240

.field public static final TYPE_INVALID:I = 0x0

.field public static final TYPE_LAUNCHER:I = 0x160

.field public static final TYPE_MESSAGE:I = 0x40

.field public static final TYPE_MMS:I = 0x4

.field public static final TYPE_MUSIC:I = 0x80

.field public static final TYPE_NOTEBOOK:I = 0x100

.field public static final TYPE_NUMBER_SETTINGS:I = 0x280

.field public static final TYPE_OPPO_GESTURE:I = 0x290

.field public static final TYPE_OPPO_USERCENTER:I = 0x270

.field public static final TYPE_PICTURE:I = 0x20

.field public static final TYPE_SAFE:I = 0x210

.field public static final TYPE_SIM_SETTINGS:I = 0x260

.field public static final TYPE_SMS:I = 0x2

.field public static final TYPE_SYSTEM_SETTING:I = 0x180

.field public static final TYPE_THEME:I = 0x170

.field public static final TYPE_USERCENTER:I = 0x220

.field public static final TYPE_WEATHER:I = 0x140

.field public static final USER_APPLICATION:I = 0x3

.field private static sIsCmcc:Z = false

.field private static sIsCmccInit:Z = false


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mParentPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deleteAppFolder(Ljava/io/File;)V
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "App"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".conf"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".conf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/compat/SDCardUtils;->delFolder(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private deleteFolder(Ljava/io/File;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->deleteFolder(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static getModulePathByType(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "OppoGesture"

    return-object p0

    :sswitch_1
    const-string p0, "NumberRecognition"

    return-object p0

    :sswitch_2
    const-string p0, "UserCenter"

    return-object p0

    :sswitch_3
    const-string p0, "SimSettings"

    return-object p0

    :sswitch_4
    const-string p0, "ContactBlacklist"

    return-object p0

    :sswitch_5
    const-string p0, "UserCenter"

    return-object p0

    :sswitch_6
    const-string p0, "Safe"

    return-object p0

    :sswitch_7
    const-string p0, "CloudNote"

    return-object p0

    :sswitch_8
    const-string p0, "Setting"

    return-object p0

    :sswitch_9
    const-string p0, "Theme"

    return-object p0

    :sswitch_a
    const-string p0, "Layout"

    return-object p0

    :sswitch_b
    const-string p0, "Weather"

    return-object p0

    :sswitch_c
    const-string p0, "Browser"

    return-object p0

    :sswitch_d
    const-string p0, "Clock"

    return-object p0

    :sswitch_e
    const-string p0, "CallRecord"

    return-object p0

    :sswitch_f
    const-string p0, "Notebook"

    return-object p0

    :sswitch_10
    const-string p0, "Music"

    return-object p0

    :sswitch_11
    const-string p0, "Picture"

    return-object p0

    :sswitch_12
    const-string p0, "App"

    return-object p0

    :sswitch_13
    const-string p0, "Calendar"

    return-object p0

    :sswitch_14
    const-string p0, "Mms"

    return-object p0

    :sswitch_15
    const-string p0, "Sms"

    return-object p0

    :sswitch_16
    const-string p0, "Contact"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x4 -> :sswitch_14
        0x8 -> :sswitch_13
        0x10 -> :sswitch_12
        0x20 -> :sswitch_11
        0x80 -> :sswitch_10
        0x100 -> :sswitch_f
        0x110 -> :sswitch_e
        0x120 -> :sswitch_d
        0x130 -> :sswitch_c
        0x140 -> :sswitch_b
        0x160 -> :sswitch_a
        0x170 -> :sswitch_9
        0x180 -> :sswitch_8
        0x190 -> :sswitch_7
        0x210 -> :sswitch_6
        0x220 -> :sswitch_5
        0x250 -> :sswitch_4
        0x260 -> :sswitch_3
        0x270 -> :sswitch_2
        0x280 -> :sswitch_1
        0x290 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getBackupPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetDirInfo(Lcom/coloros/backup/sdk/BackupAgent;)Lcom/coloros/backup/sdk/TargetDirInfo;
    .locals 4

    new-instance v0, Lcom/coloros/backup/sdk/TargetDirInfo;

    invoke-direct {v0}, Lcom/coloros/backup/sdk/TargetDirInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v2

    iget v2, v2, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->getModulePathByType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v2

    iget v2, v2, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    const/16 v3, 0x10

    if-eq v3, v2, :cond_1

    iput-object v1, v0, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getIsChildAgent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getIsAlong()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, v0, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getGroupType()I

    move-result p0

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->getModulePathByType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->getModulePathByType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    :goto_0
    iput-object p0, v0, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    :cond_2
    :goto_1
    const-string p0, "LocalTransport"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTargetDirInfo: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTranportName()Ljava/lang/String;
    .locals 0

    const-string p0, "local_transport"

    return-object p0
.end method

.method public onEndBackup()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onEndRestore()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInitBackup()Z
    .locals 10

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/compat/SDCardUtils;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitBackup: path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/compat/SDCardUtils;->getPersonalDataBackupPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-int/lit8 v7, v1, 0x1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v8, v1

    add-long/2addr v5, v8

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    array-length v1, v0

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v7

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, "LocalTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitBackup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onInitRestore(Ljava/lang/String;)Z
    .locals 2

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    const-string p1, "LocalTransport"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInitRestore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/LocalTransport;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public performBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public performRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method