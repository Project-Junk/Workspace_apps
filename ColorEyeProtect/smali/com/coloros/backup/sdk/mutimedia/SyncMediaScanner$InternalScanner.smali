.class Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalScanner"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mMSC:Landroid/media/MediaScannerConnection;

.field private mResult:Landroid/net/Uri;

.field final synthetic this$0:Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->this$0:Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    new-instance p1, Landroid/media/MediaScannerConnection;

    invoke-direct {p1, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    return-void
.end method

.method private connectMSC()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const-string v1, "SyncMediaScanner"

    const-string v2, "mMSC.connect() fail...mLock.wait()"

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "SyncMediaScanner"

    const-string v1, "mMSC.connect() fail...mLock.wait() InterruptedException "

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p0, "SyncMediaScanner"

    const-string v1, "mMSC.isConnected()=true,mLock.notifyAll()"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mResult:Landroid/net/Uri;

    iget-object p1, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p0, "SyncMediaScanner"

    const-string p2, "onScanCompleted,mLock.notifyAll()"

    invoke-static {p0, p2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public scan(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->connectMSC()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string v0, "SyncMediaScanner"

    const-string v1, "mMSC.scanFile,mLock.wait()"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v0, "SyncMediaScanner"

    const-string v1, "mMSC.scanFile,mLock.wait() InterruptedException"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mResult:Landroid/net/Uri;

    return-object p0

    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->connectMSC()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/mutimedia/SyncMediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_0
    return-void
.end method
