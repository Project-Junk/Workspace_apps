.class Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackupRestoreSrvClient"
.end annotation


# static fields
.field private static final RES_LEN:I = 0x2

.field private static final SERVER_NAME:Ljava/lang/String; = "backuprestore"

.field private static mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;


# instance fields
.field private buflen:I

.field private mClientSocket:Landroid/net/LocalSocket;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private res:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-direct {v0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;-><init>()V

    sput-object v0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->res:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->buflen:I

    return-void
.end method

.method public static getInstence()Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;
    .locals 1

    sget-object v0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    return-object v0
.end method


# virtual methods
.method public connect()Z
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "backuprestore"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iget-object v2, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    const v2, 0x493e0

    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string v0, "BackupRestoreSrv"

    const-string v1, "connect IOException"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->disconnect()V

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect()V
    .locals 2

    const-string v0, "BackupRestoreSrv"

    const-string v1, "Disconnecting..."

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    return-void
.end method

.method public excute(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->connect()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "BackupRestoreSrv"

    const-string p1, "connection failed"

    :goto_0
    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->writeCmd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BackupRestoreSrv"

    const-string v2, "write failed"

    invoke-static {v0, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->connect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->writeCmd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string p0, "BackupRestoreSrv"

    const-string p1, "write failed"

    goto :goto_0

    :cond_2
    const-string v0, "BackupRestoreSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->readReply()I

    move-result p0

    return p0
.end method

.method public readReply()I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->res:[B

    rsub-int/lit8 v6, v2, 0x2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_0

    const-string v4, "BackupRestoreSrv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readReply failed! count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :catch_0
    const-string v2, "BackupRestoreSrv"

    const-string v4, "read exception"

    invoke-static {v2, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->res:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->res:[B

    aget-byte p0, p0, v0

    add-int/2addr v1, p0

    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public writeCmd(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    const/16 v5, 0x800

    if-le v0, v5, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    :try_start_0
    iget-object v5, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v5, v2, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    const-string p1, "BackupRestoreSrv"

    const-string v0, "after write"

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const-string p1, "BackupRestoreSrv"

    const-string v0, "write error"

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->disconnect()V

    :cond_1
    :goto_0
    return v4
.end method
