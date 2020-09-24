.class public abstract Lcom/coloros/backup/sdk/utils/TarToolUtils;
.super Ljava/lang/Object;


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = ""

.field private static final BLACK_FILE:[Ljava/lang/String;

.field public static final BLACK_PACKAGE:[Ljava/lang/String;

.field private static final BUFFER:I = 0x400

.field private static final CLASS_TAG:Ljava/lang/String; = "BackupTAG/TarToolUtils"

.field public static final COMMON_FILES:Ljava/lang/String; = "common_files"

.field private static final EXT:Ljava/lang/String; = ".tar"

.field private static final PATH:Ljava/lang/String; = "/"

.field private static final SPLIT:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "TarToolUtils"

.field private static final TARPATH:Ljava/lang/String; = "data/data/"

.field public static blackFileHashMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mode:I = 0x0

.field public static pathForXunLei:Ljava/lang/String; = "/data/data/com.oppo.backuprestore/app_app_tmp/com.xunlei.downloadprovider/data/data/com.xunlei.downloadprovider/lock/lockFile"

.field private static sFolderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->blackFileHashMap:Ljava/util/HashMap;

    sget-object v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->blackFileHashMap:Ljava/util/HashMap;

    const-string v1, "com.oppo.trafficmonitor"

    const-string v2, "databases/network.db,databases/network.db-journal"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->blackFileHashMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    const-string v2, "MicroMsg/SdcardInfo.cfg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.popcap.pvz2cthdbddk"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_PACKAGE:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->mode:I

    const-string v1, "/data/data/com.oppo.backuprestore/tmp/wifiConfig/hostapd"

    const-string v2, "/data/data/com.oppo.backuprestore/tmp/data/data/wifiConfig/hostapd"

    const-string v3, "/data/data/com.oppo.backuprestore/tmp/com.oppo.trafficmonitor/databases/network.db"

    const-string v4, "/data/data/com.oppo.backuprestore/tmp/com.oppo.trafficmonitor/databases/network.db-journal"

    const-string v5, "/data/data/com.oppo.backuprestore/tmp/com.tencent.mm/MicroMsg/SdcardInfo.cfg"

    const-string v6, "/data/data/com.oppo.backuprestore/tmp/data/data/com.tencent.mm/MicroMsg/SdcardInfo.cfg"

    const-string v7, "com.oppo.launcher/databases/badge.db"

    const-string v8, "com.oppo.launcher/databases/badge.db-journal"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_FILE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static archive(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/coloros/backup/sdk/utils/TarToolUtils;->sFolderName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p0, v1

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->archive(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->flush()V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->close()V

    return-void
.end method

.method public static archive(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->archive(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private static archive(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->isBlackFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->archiveDir(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->archiveFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static archive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->isBlackPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->pathForXunLei:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->setFileChmodAttribute(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->archive(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static archiveDir(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->getMode(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/coloros/backup/sdk/utils/TarToolUtils;->mode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->sFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    const/16 v2, 0x62

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/coloros/backup/sdk/utils/TarToolUtils;->mode:I

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setMode(I)V

    invoke-virtual {p1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    if-eqz v0, :cond_2

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v2, v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->archive(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static archiveFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->isBlackFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/coloros/backup/sdk/utils/TarToolUtils;->sFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->getMode(Ljava/lang/String;)I

    move-result p2

    sput p2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->mode:I

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->getMode(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setMode(I)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->setLongFileMode(I)V

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    const/16 p0, 0x400

    new-array p2, p0, [B

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, p2, v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    return-void

    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static dearchive(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->dearchive(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V

    return-void
.end method

.method public static dearchive(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->dearchive(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private static dearchive(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)V
    .locals 3

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->isBlackFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->fileProber(Ljava/io/File;)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v0

    const/4 v2, -0x1

    invoke-static {v1, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v0

    invoke-static {v2, p1, v0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->dearchiveFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static dearchive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->isBlackPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->dearchive(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static dearchiveFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;I)V
    .locals 6

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".oat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const-string p1, "BackupTAG/TarToolUtils"

    const-string p2, "oat file delete it and return"

    invoke-static {p1, p2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_2
    return-void

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :cond_3
    throw p0
.end method

.method private static expandPath([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    array-length v0, p0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object p0, p0, v1

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static expandPath([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    array-length v0, p0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object p0, p0, v1

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, p0

    invoke-static {p0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v3, p1

    invoke-static {p1, v1, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v2

    :goto_0
    if-ge v1, p0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/data/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    aget-object p1, v2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p0, -0x1

    if-eq v1, p1, :cond_1

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_1
    const-string p1, "TarToolUtils"

    const-string v0, "blackFile2 is empty"

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->expandPath([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static fileProber(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->fileProber(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1ff

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_0
    return-void
.end method

.method public static getBlackFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->blackFileHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    sget-object v4, Lcom/coloros/backup/sdk/utils/TarToolUtils;->blackFileHashMap:Ljava/util/HashMap;

    const-string v5, "common_files"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v0, v4, p0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->expandPath([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    aput-object p0, v0, v2

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->blackFileHashMap:Ljava/util/HashMap;

    const-string v4, "common_files"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->expandPath([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    aput-object p0, v0, v2

    return-object v0

    :cond_2
    return-object v1
.end method

.method private static getMode(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_mode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BackupTAG/TarToolUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t stat path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static isBlackFile(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_FILE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-eqz p0, :cond_1

    sget-object v2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_FILE:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_FILE:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string p0, "BackupTAG/TarToolUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlackFile path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_FILE:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isBlackPackage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_PACKAGE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz p0, :cond_0

    sget-object v2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_PACKAGE:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "BackupTAG/TarToolUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLACK_PACKAGE path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/backup/sdk/utils/TarToolUtils;->BLACK_PACKAGE:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isMultiBlackFile(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static putBlackFiles(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/coloros/backup/sdk/utils/TarToolUtils;->blackFileHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setFileChmodAttribute(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BackupTAG/TarToolUtils"

    const-string v0, "setFileChmodAttribute IOException"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
