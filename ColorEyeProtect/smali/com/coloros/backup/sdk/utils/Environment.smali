.class public Lcom/coloros/backup/sdk/utils/Environment;
.super Ljava/lang/Object;


# static fields
.field public static final EXTERNAL_INTERNAL:I = 0x1

.field public static final INTERNAL_EXTERNAL:I = 0x0

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field public static final SEPATATE_INTERNAL_EXTERNAL:I = 0x2

.field public static final SINGLE_SDCARD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static sExternalSdDir:Ljava/lang/String;

.field private static sInternalSdDir:Ljava/lang/String;

.field private static sStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalSdDirectory()Ljava/io/File;
    .locals 2

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->update()V

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getExternalSdPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->update()V

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalSdState()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->update()V

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getInternalSdDirectory()Ljava/io/File;
    .locals 2

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->update()V

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sInternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/coloros/backup/sdk/utils/Environment;->sInternalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getInternalSdPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->update()V

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sInternalSdDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getInternalSdState()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->update()V

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sInternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/coloros/backup/sdk/utils/Environment;->sInternalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getTheWayOfMounting()I
    .locals 5

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->getInternalSdPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->getVolumeCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_4
    const-string v0, "Environment"

    const-string v1, "storage error!"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public static getVolumeCount()I
    .locals 1

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static initStorageManager(Landroid/content/Context;)V
    .locals 1

    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    sput-object p0, Lcom/coloros/backup/sdk/utils/Environment;->sStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method public static isExternalSDMounted()Z
    .locals 4

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external mount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalSDRemoved()Z
    .locals 4

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->update()V

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "Environment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the state of volume is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/backup/sdk/utils/Environment;->sStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "removed"

    sget-object v1, Lcom/coloros/backup/sdk/utils/Environment;->sStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInternalSDMounted()Z
    .locals 4

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->getInternalSdState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal mount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/backup/sdk/utils/Environment;->getInternalSdState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPathAtExternalSd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_d

    :cond_0
    :goto_0
    const-string p0, "Environment"

    const-string p1, "null == path"

    :goto_1
    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto/16 :goto_4

    :cond_3
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    const-string p0, "Environment"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v0, "this.is a error path ;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    const-string p0, "Environment"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_9
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    const-string p0, "Environment"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_c
    const-string p0, "Environment"

    const-string p1, "storage is error"

    goto :goto_1

    :cond_d
    :goto_3
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method private static update()V
    .locals 4

    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/backup/sdk/utils/Environment;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the length of volumes[] is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,expected is 1 or 2 !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/coloros/backup/sdk/utils/Environment;->sExternalSdDir:Ljava/lang/String;

    goto :goto_1

    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/coloros/backup/sdk/utils/Environment;->sInternalSdDir:Ljava/lang/String;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
