.class Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/backuprestore/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalScanner"
.end annotation


# static fields
.field private static final WAIT_TIME:I = 0x1f4


# instance fields
.field private volatile mConnected:Z

.field private final mLock:Ljava/lang/Object;

.field private mMSC:Landroid/media/MediaScannerConnection;

.field private mResult:Landroid/net/Uri;

.field private volatile mScanned:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mConnected:Z

    .line 36
    iput-boolean v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mScanned:Z

    .line 41
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    return-void
.end method

.method private connectMSC()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mConnected:Z

    if-nez v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 104
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " MediaScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    const-string v0, " MediaScanner"

    const-string v1, "onMediaScannerConnected"

    .line 77
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mConnected:Z

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 86
    iput-object p2, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mResult:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mScanned:Z

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onScanCompleted ... mResult="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mResult:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " MediaScanner"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 90
    :try_start_0
    iget-object p2, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 91
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public scan(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->connectMSC()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 63
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mScanned:Z

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    const-string v0, " MediaScanner"

    const-string v1, "scan ... wait"

    .line 65
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, " MediaScanner"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "scan ... mResult="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mResult:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " MediaScanner"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mResult:Landroid/net/Uri;

    return-object p1

    .line 70
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->connectMSC()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->mMSC:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_0
    return-void
.end method
