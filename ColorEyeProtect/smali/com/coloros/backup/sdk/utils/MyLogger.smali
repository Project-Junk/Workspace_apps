.class public Lcom/coloros/backup/sdk/utils/MyLogger;
.super Ljava/lang/Object;


# static fields
.field public static final APP_TAG:Ljava/lang/String; = "App: "

.field public static final BACKUP_ACTIVITY_TAG:Ljava/lang/String; = "BackupActivity: "

.field public static final BACKUP_ENGINE_TAG:Ljava/lang/String; = "BackupEngine: "

.field public static final BACKUP_SERVICE_TAG:Ljava/lang/String; = "BackupService: "

.field public static final CONTACT_TAG:Ljava/lang/String; = "Contact: "

.field public static final LOG_TAG:Ljava/lang/String; = "BackupTAG"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "Message: "

.field public static final MMS_TAG:Ljava/lang/String; = "Mms: "

.field public static final MUSIC_TAG:Ljava/lang/String; = "Music: "

.field public static final NOTEBOOK_TAG:Ljava/lang/String; = "NoteBook: "

.field public static final PICTURE_TAG:Ljava/lang/String; = "Picture: "

.field public static final SMS_TAG:Ljava/lang/String; = "SMS: "

.field private static isDevolopMode:Z = true

.field private static level:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.assert.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestore LogMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mtk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    sput v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coloros/backup/sdk/utils/MyLogger;->isDevolopMode:Z

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDevelopMode()Z
    .locals 1

    sget-boolean v0, Lcom/coloros/backup/sdk/utils/MyLogger;->isDevolopMode:Z

    return v0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const-string v0, "BackupTAG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string v0, "BackupTAG"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string v0, "BackupTAG"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const-string v0, "BackupTAG"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logV(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, "BackupTAG"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-string v0, "BackupTAG"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/backup/sdk/utils/MyLogger;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
